package com.wellsfargo.batch7.sbwibs.service;

import java.util.List;

import javax.validation.Valid;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;

public interface AccountService {

	AccountModel createSavingsAccount(@Valid AccountModel account) throws IBSException;
	List<AccountModel> getAllSavingsAccount() throws IBSException;
	List<AccountModel> getAllFixedDepositAccount() throws IBSException;
	List<AccountModel> getAllRecurringDepositAccount()throws IBSException;
	AccountModel createRecurringDeposit(@Valid AccountModel account) throws IBSException;
	AccountModel createFixedDeposit(@Valid AccountModel account) throws IBSException;
}
