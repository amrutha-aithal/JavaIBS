package com.wellsfargo.batch7.sbwibs.service;

import java.time.LocalDate;
import java.util.List;
import java.util.TreeSet;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wellsfargo.batch7.sbwibs.entity.AccountEntity;
import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;
import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;

import com.wellsfargo.batch7.sbwibs.repo.AccountRepo;
import com.wellsfargo.batch7.sbwibs.repo.CustomerRepo;
import com.wellsfargo.batch7.sbwibs.util.EMParser;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountRepo accountRepo;

	@Autowired
	private CustomerRepo customerRepo;

	@Override
	public AccountModel createSavingsAccount(@Valid AccountModel account) throws IBSException {

		CustomerEntity customer = customerRepo.findByEmailId("p.munirajkumar@gmail.com");
	
		/*LocalDate depositDate = LocalDate.now();
		AccountModel account = new AccountModel(null, "savings", 1000.0, 4.75, depositDate, null, null, null, null,
				null, 1000.0, EMParser.parse(customer));
		
		 * customer.setSavAccount(new TreeSet<>());
		 * customer.getSavAccount().add(EMParser.parse(account));
		 * customerRepo.save(customer);
		 */
		
		account.setCustomer(EMParser.parse(customer));
		return EMParser.parse(accountRepo.save(EMParser.parse(account)));

		/*
		 * accountRepo.save(EMParser.parse(account)); return account;
		 */
	}

	@Override
	public List<AccountModel> getAllSavingsAccount() throws IBSException {
		CustomerEntity customer = customerRepo.findByEmailId("p.munirajkumar@gmail.com");
		return accountRepo.findAllSavingsAccountByCustomer(customer).stream().map(e -> EMParser.parse(e))
				.collect(Collectors.toList());
	}

	@Override
	public AccountModel createFixedDeposit(@Valid AccountModel account) throws IBSException {
		CustomerEntity customer = customerRepo.findByEmailId("p.munirajkumar@gmail.com");
		account.setCustomer(EMParser.parse(customer));
		return EMParser.parse(accountRepo.save(EMParser.parse(account)));

	}

	@Override
	public List<AccountModel> getAllFixedDepositAccount() throws IBSException {
		CustomerEntity customer = customerRepo.findByEmailId("p.munirajkumar@gmail.com");

		return accountRepo.findAllFixedDepositByCustomer(customer).stream().map(e -> EMParser.parse(e))
				.collect(Collectors.toList());
	}

	@Override
	public List<AccountModel> getAllRecurringDepositAccount() {
		CustomerEntity customer = customerRepo.findByEmailId("p.munirajkumar@gmail.com");
		return accountRepo.findAllRecurringDepositByCustomer(customer).stream().map(e -> EMParser.parse(e))
				.collect(Collectors.toList());
	}

	@Override
	public AccountModel createRecurringDeposit(@Valid AccountModel account) {
		CustomerEntity customer = customerRepo.findByEmailId("p.munirajkumar@gmail.com");
		account.setCustomer(EMParser.parse(customer));
		return EMParser.parse(accountRepo.save(EMParser.parse(account)));
	}

}
