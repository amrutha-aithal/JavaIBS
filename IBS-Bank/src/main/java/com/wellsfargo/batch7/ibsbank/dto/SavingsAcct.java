package com.wellsfargo.batch7.ibsbank.dto;

public class SavingsAcct extends Account {

	public SavingsAcct(String accSartDate, String depositDate, Double amntDeposit, Double amntDebited, String accNumber,
			String balanceAmnt, Integer transasctionID) {
		super(accSartDate, depositDate, amntDeposit, amntDebited, accNumber, balanceAmnt, transasctionID);
		
	}

	public String getAccountInfo() {
		return null;	
	}
	
	public String Statements() {
		return null;
		
	}
	
	public String BalanceCheck() {
		return null;
		
	}

}
