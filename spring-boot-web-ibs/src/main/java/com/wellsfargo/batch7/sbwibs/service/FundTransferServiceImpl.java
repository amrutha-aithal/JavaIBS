package com.wellsfargo.batch7.sbwibs.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wellsfargo.batch7.sbwibs.util.EMParser;
import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;
import com.wellsfargo.batch7.sbwibs.entity.IbsUserEntity;
import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;
import com.wellsfargo.batch7.sbwibs.model.FundTransferModel;
import com.wellsfargo.batch7.sbwibs.repo.AccountRepo;
import com.wellsfargo.batch7.sbwibs.repo.CustomerRepo;
import com.wellsfargo.batch7.sbwibs.repo.FundTransferRepo;
import com.wellsfargo.batch7.sbwibs.repo.IbsUserRepo;

@Service
public class FundTransferServiceImpl implements FundTransferService{
	
	@Autowired
	private FundTransferRepo fundTransferRepo;
	
	@Autowired
	private AccountRepo accountRepo;

	@Autowired
	private CustomerRepo customerRepo;
	
	@Autowired
	private IbsUserRepo userRepo;
	@Transactional
	@Override
	public FundTransferModel add(@Valid FundTransferModel beneficiary) throws IBSException {
//		if(beneficiary!=null) {
//			if(fundTransferRepo.existsById(beneficiary.getBeneficiaryAccNum())) {
//				throw new IBSException("Beneficiary Acc#"+beneficiary.getBeneficiaryAccNum()+" already exists");
//			}
		
			beneficiary=EMParser.parse(fundTransferRepo.save(EMParser.parse(beneficiary)));
//	}		
		return beneficiary;
	}
	
	@Transactional
	@Override
	public FundTransferModel update(FundTransferModel beneficiary) throws IBSException {
		if(beneficiary!=null) {
			if(!fundTransferRepo.existsById(beneficiary.getBeneficiaryAccNum())) {
				throw new IBSException("Beneficiary Acc#"+beneficiary.getBeneficiaryAccNum()+" doesn't exists");
			}
			beneficiary=EMParser.parse(fundTransferRepo.save(EMParser.parse(beneficiary)));
		}		
		return beneficiary;
	}

	@Override
	public List<FundTransferModel> getAllByAccount(AccountModel account) throws IBSException {
		return fundTransferRepo.findAllByAccount(EMParser.parse(account))
				.stream().map(e->EMParser.parse(e)).collect(Collectors.toList());
	}

	@Override
	public List<FundTransferModel> getAll() throws IBSException {
		return fundTransferRepo.findAll().stream().map(e->EMParser.parse(e)).collect(Collectors.toList());
	}
	
	

}
