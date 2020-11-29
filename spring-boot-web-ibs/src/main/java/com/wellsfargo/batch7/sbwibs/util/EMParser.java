package com.wellsfargo.batch7.sbwibs.util;

import com.wellsfargo.batch7.sbwibs.entity.AccountEntity;
import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;
import com.wellsfargo.batch7.sbwibs.entity.IbsUserEntity;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;

public class EMParser {
	
	public static IbsUserModel parse(IbsUserEntity source) {
		IbsUserModel target = new IbsUserModel();
		target.setUserId(source.getUserId());
		target.setUserName(source.getUserName());
		target.setPassword(source.getPassword());
		target.setRole(source.getRole());
		return target;
	}
	
	public static IbsUserEntity parse(IbsUserModel source) {
		IbsUserEntity target = new IbsUserEntity();
		target.setUserId(source.getUserId());
		target.setUserName(source.getUserName());
		target.setPassword(source.getPassword());
		target.setRole(source.getRole());
		return target;
	}

	public static AccountModel parse(AccountEntity source) {
		AccountModel target = new AccountModel();
		target.setAccountNum(source.getAccountNum());
		target.setAccountType(source.getAccountType());
		target.setAmountDeposit(source.getAmountDeposit());
		target.setBalanceAmt(source.getBalanceAmt());
		target.setDepositDate(source.getDepositDate());
		target.setInterestRate(source.getInterestRate());
		target.setInterestReceived(source.getInterestReceived());
		target.setMaturityAmount(source.getMaturityAmount());
		target.setMaturityDate(source.getMaturityDate());
		target.setTimeInMonths(source.getTimeInMonths());
		target.setTimeInYears(source.getTimeInYears());
		target.setAccountHolder(parse(source.getAccountHolder()));
		return target;
	}
	
	public static AccountEntity parse(AccountModel source) {
		AccountEntity target = new AccountEntity();
		target.setAccountNum(source.getAccountNum());
		target.setAccountType(source.getAccountType());
		target.setAmountDeposit(source.getAmountDeposit());
		target.setBalanceAmt(source.getBalanceAmt());
		target.setDepositDate(source.getDepositDate());
		target.setInterestRate(source.getInterestRate());
		target.setInterestReceived(source.getInterestReceived());
		target.setMaturityAmount(source.getMaturityAmount());
		target.setMaturityDate(source.getMaturityDate());
		target.setTimeInMonths(source.getTimeInMonths());
		target.setTimeInYears(source.getTimeInYears());
		target.setAccountHolder(parse(source.getAccountHolder()));
		return target;
	}
	
	public static CustomerModel parse(CustomerEntity source) {
		CustomerModel target = new CustomerModel();
		target.setUserId(source.getUserId());
		target.setUserName(source.getUserName());
		target.setPassword(source.getPassword());
		target.setRole(source.getRole());
		target.setAddress(source.getAddress());
		target.setCustomerName(source.getCustomerName());
		target.setDateOfBirth(source.getDateOfBirth());
		target.setEmailId(source.getEmailId());
		target.setPhoneNumber(source.getPhoneNumber());
		target.setTxnPassword(source.getTxnPassword());
//		target.setSavAccount(parse(source.getSavAccount()));
		return target;
	}
	
	public static CustomerEntity parse(CustomerModel source) {
		CustomerEntity target = new CustomerEntity();
		target.setUserId(source.getUserId());
		target.setUserName(source.getUserName());
		target.setPassword(source.getPassword());
		target.setRole(source.getRole());
		target.setAddress(source.getAddress());
		target.setCustomerName(source.getCustomerName());
		target.setDateOfBirth(source.getDateOfBirth());
		target.setEmailId(source.getEmailId());
		target.setPhoneNumber(source.getPhoneNumber());
		target.setTxnPassword(source.getTxnPassword());
//		target.setSavAccount(parse(source.getSavAccount()));
		return target;
	}
}