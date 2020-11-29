package com.wellsfargo.batch7.sbwibs.model;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;



public class AccountModel {
	
	@NotNull(message="Account Num is mandatory")
	@NotBlank(message="Account Num can not be null")
	private String accountNum;
	
	@NotNull(message="AccountType is mandatory")
	@NotBlank(message="AccountType can not be null")
	private String accountType;
	
	
	@NotBlank(message="Amount Deposi can not be null")
	private Double amountDeposit;
	
	
	private Double interestRate;
	
	
	private Date depositDate;
	
	
	private Date maturityDate;
	
	
	private Double interestReceived;
	
	
	private Double timeInYears;
	
	
	private Double timeInMonths;
	
	
	private Double maturityAmount;
	
	
	private Double balanceAmt;
	
	
	private CustomerModel accountHolder;
	
	
	public AccountModel() {
		
	}

	public AccountModel(String accountNum, String accountType, Double amountDeposit, Double interestRate,
			Date depositDate, Date maturityDate, Double interestReceived, Double timeInYears,
			Double timeInMonths, Double maturityAmount, Double balanceAmt) {
		super();
		this.accountNum = accountNum;
		this.accountType = accountType;
		this.amountDeposit = amountDeposit;
		this.interestRate = interestRate;
		this.depositDate = depositDate;
		this.maturityDate = maturityDate;
		this.interestReceived = interestReceived;
		this.timeInYears = timeInYears;
		this.timeInMonths = timeInMonths;
		this.maturityAmount = maturityAmount;
		this.balanceAmt = balanceAmt;
	}

	public String getAccountNum() {
		return accountNum;
	}

	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public Double getAmountDeposit() {
		return amountDeposit;
	}

	public void setAmountDeposit(Double amountDeposit) {
		this.amountDeposit = amountDeposit;
	}

	public Double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(Double interestRate) {
		this.interestRate = interestRate;
	}

	public Date getDepositDate() {
		return depositDate;
	}

	public void setDepositDate(Date depositDate) {
		this.depositDate = depositDate;
	}

	public Date getMaturityDate() {
		return maturityDate;
	}

	public void setMaturityDate(Date maturityDate) {
		this.maturityDate = maturityDate;
	}

	public Double getInterestReceived() {
		return interestReceived;
	}

	public void setInterestReceived(Double interestReceived) {
		this.interestReceived = interestReceived;
	}

	public Double getTimeInYears() {
		return timeInYears;
	}

	public void setTimeInYears(Double timeInYears) {
		this.timeInYears = timeInYears;
	}

	public Double getTimeInMonths() {
		return timeInMonths;
	}

	public void setTimeInMonths(Double timeInMonths) {
		this.timeInMonths = timeInMonths;
	}

	public Double getMaturityAmount() {
		return maturityAmount;
	}

	public void setMaturityAmount(Double maturityAmount) {
		this.maturityAmount = maturityAmount;
	}

	public Double getBalanceAmt() {
		return balanceAmt;
	}

	public void setBalanceAmt(Double balanceAmt) {
		this.balanceAmt = balanceAmt;
	}

	public CustomerModel getAccountHolder() {
		return accountHolder;
	}

	public void setAccountHolder(CustomerModel accountHolder) {
		this.accountHolder = accountHolder;
	}


	

	
}
