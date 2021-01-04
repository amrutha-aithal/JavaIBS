package com.wellsfargo.batch7.sbwibs.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wellsfargo.batch7.sbwibs.util.EMParser;
import com.wellsfargo.batch7.sbwibs.entity.AccountEntity;
import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;
import com.wellsfargo.batch7.sbwibs.entity.FundTransactionEntity;
import com.wellsfargo.batch7.sbwibs.entity.IbsUserEntity;
import com.wellsfargo.batch7.sbwibs.entity.ServiceProviderEntity;
import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;
import com.wellsfargo.batch7.sbwibs.model.FundTransferModel;
import com.wellsfargo.batch7.sbwibs.repo.AccountRepo;
import com.wellsfargo.batch7.sbwibs.repo.CustomerRepo;
import com.wellsfargo.batch7.sbwibs.repo.FundTransactionRepo;
import com.wellsfargo.batch7.sbwibs.repo.FundTransferRepo;
import com.wellsfargo.batch7.sbwibs.repo.IbsUserRepo;
import com.wellsfargo.batch7.sbwibs.repo.ServiceProviderRepo;

@Service
public class FundTransferServiceImpl implements FundTransferService {

	@Autowired
	private FundTransferRepo fundTransferRepo;

	@Autowired
	private FundTransactionRepo fundTransactionRepo;

	@Autowired
	private AccountRepo accountRepo;

	@Autowired
	private CustomerRepo customerRepo;

	@Autowired
	private IbsUserRepo userRepo;

	@Autowired
	private ServiceProviderRepo spRepo;

	@Transactional
	@Override
	public FundTransferModel add(@Valid FundTransferModel beneficiary) throws IBSException {
		Optional<AccountEntity> accounts = accountRepo.findById(beneficiary.getAccount().getAccountNum());
		AccountEntity account = accounts.get();
		beneficiary.setAccount(EMParser.parse(account));
		beneficiary = EMParser.parse(fundTransferRepo.save(EMParser.parse(beneficiary)));
		return beneficiary;
	}

	@Transactional
	@Override
	public FundTransferModel update(FundTransferModel beneficiary) throws IBSException {
		if (beneficiary != null) {
			if (!fundTransferRepo.existsById(beneficiary.getBeneficiaryAccNum())) {
				throw new IBSException("Beneficiary Acc#" + beneficiary.getBeneficiaryAccNum() + " doesn't exists");
			}
			Optional<AccountEntity> accounts = accountRepo.findById(beneficiary.getAccount().getAccountNum());
			AccountEntity account = accounts.get();

			beneficiary.setAccount(EMParser.parse(account));
			beneficiary = EMParser.parse(fundTransferRepo.save(EMParser.parse(beneficiary)));
		}
		return beneficiary;
	}

	@Override
	public List<FundTransferModel> getAllByAccount(AccountModel account) throws IBSException {
		return fundTransferRepo.findAllByAccount(EMParser.parse(account)).stream().map(e -> EMParser.parse(e))
				.collect(Collectors.toList());
	}

	@Override
	public List<FundTransferModel> getAll() throws IBSException {
		return fundTransferRepo.findAll().stream().map(e -> EMParser.parse(e)).collect(Collectors.toList());
	}

	@Override
	public FundTransferModel get(long benefAccNum) throws IBSException {
		if (!fundTransferRepo.existsById(benefAccNum)) {
			throw new IBSException("Beneficiary Acc#" + benefAccNum + " does not exists");
		}
		return EMParser.parse(fundTransferRepo.findById(benefAccNum).get());
	}

	@Transactional
	@Override
	public FundTransferModel transferFund(@Valid FundTransferModel fund) throws IBSException {
		Optional<AccountEntity> accounts = accountRepo.findById(fund.getAccount().getAccountNum());
		AccountEntity account = accounts.get();
		if (account.getBalanceAmt() - fund.getAmtTransfer() >= 0)
			account.setBalanceAmt(account.getBalanceAmt() - fund.getAmtTransfer());
		else
			throw new IBSException("Insufficient Funds");
		accountRepo.save(account);
		fund.setAccount(EMParser.parse(account));
		FundTransactionEntity transaction = new FundTransactionEntity();
		transaction.setAmtTransfer(fund.getAmtTransfer());
		transaction.setTransactionDate(fund.getTransactionDate());
		transaction.setAccount(account);
		transaction.setBeneficiary(EMParser.parse(fund));
		fundTransactionRepo.save(transaction);
		return fund;
	}

	@Transactional
	@Override
	public FundTransferModel billPayment(FundTransferModel fund) throws IBSException {
		Optional<AccountEntity> accounts = accountRepo.findById(fund.getAccount().getAccountNum());
		AccountEntity account = accounts.get();
		Optional<ServiceProviderEntity> serviceProviders = spRepo
				.findByCustomerName(fund.getServiceprovider().getCustomerName());
		ServiceProviderEntity serviceProvider = serviceProviders.get();
		if (account.getBalanceAmt() - fund.getAmtTransfer() >= 0)
			account.setBalanceAmt(account.getBalanceAmt() - fund.getAmtTransfer());
		else
			throw new IBSException("Insufficient Funds");
		accountRepo.save(account);
		fund.setAccount(EMParser.parse(account));
		fund.setServiceprovider(EMParser.parse(serviceProvider));
		FundTransactionEntity transaction = new FundTransactionEntity();
		transaction.setAmtTransfer(fund.getAmtTransfer());
		transaction.setTransactionDate(fund.getTransactionDate());
		transaction.setAccount(account);
		transaction.setServiceProvider(serviceProvider);
		fundTransactionRepo.save(transaction);
		return fund;
	}

	@Override
	public List<FundTransactionEntity> getAllTransactions(String currentUserName) throws IBSException {
		IbsUserEntity user = userRepo.findByUserName(currentUserName);
		List<FundTransactionEntity> transactions = new ArrayList<FundTransactionEntity>();
		Optional<CustomerEntity> optionalCustomer = customerRepo.findById(user.getUserId());
		CustomerEntity customer = optionalCustomer.get();
		List<AccountEntity> accounts = accountRepo.findAllByCustomer(customer);
		for (int i = 0; i < accounts.size(); i++)
			transactions.addAll(fundTransactionRepo.findAllByAccount(accounts.get(i)));
		int len = transactions.size();
		if (len > 5)
			return transactions.subList(len - 5, len);
		else
			return transactions;
	}

	@Override
	public List<FundTransactionEntity> getMonthlyStmnt(LocalDate startDate, LocalDate endDate, Long accountNum) {
		List<FundTransactionEntity> transactions = new ArrayList<FundTransactionEntity>();
		transactions = fundTransactionRepo.getMonthlyStmnt(startDate, endDate, accountNum);
		return transactions;
	}

	@Override
	public List<FundTransactionEntity> getAllPayments(String currentUserName) throws IBSException {
		IbsUserEntity user = userRepo.findByUserName(currentUserName);
		Long spId = user.getUserId();
		return fundTransactionRepo.getStatements(spId);
	}

}
