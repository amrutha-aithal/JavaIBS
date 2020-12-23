package com.wellsfargo.batch7.sbwibs.service;

import java.util.List;

import javax.validation.Valid;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;
import com.wellsfargo.batch7.sbwibs.model.FundTransferModel;

public interface FundTransferService {

	FundTransferModel add(@Valid FundTransferModel beneficiary) throws IBSException;
	FundTransferModel update(FundTransferModel beneficiary) throws IBSException;	
	List<FundTransferModel> getAllByAccount(AccountModel account) throws IBSException;
	List<FundTransferModel> getAll() throws IBSException;
	
}
