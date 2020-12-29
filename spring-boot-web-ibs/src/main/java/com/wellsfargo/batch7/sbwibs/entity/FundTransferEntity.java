package com.wellsfargo.batch7.sbwibs.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="ibs_fund_transfer")
public class FundTransferEntity {
	
	@Id
	@Column(name="benefAccNum")
	private Long beneficiaryAccNum;
	
	@Column(name="benefName")
	private String beneficiaryName;
	
	@Column(name="ifsc")
	private String ifscCode;
	
	@Column(name="amtTransferred")
	private Double amtTransfer;
	
	@Column(name="txnDate")
	private LocalDate transactionDate;
	
	@ManyToOne
	@JoinColumn(name="acno")
	private AccountEntity account;
	
	
	public FundTransferEntity() {
		
	}


	public FundTransferEntity(
			Long beneficiaryAccNum,String beneficiaryName,String ifscCode,
			Double amtTransfer, LocalDate transactionDate, AccountEntity account) {
		super();
		this.beneficiaryAccNum = beneficiaryAccNum;
		this.beneficiaryName = beneficiaryName;
		this.ifscCode = ifscCode;
		this.amtTransfer = amtTransfer;
		this.transactionDate = transactionDate;
		this.account = account;
	}


	public Long getBeneficiaryAccNum() {
		return beneficiaryAccNum;
	}


	public void setBeneficiaryAccNum(Long beneficiaryAccNum) {
		this.beneficiaryAccNum = beneficiaryAccNum;
	}


	public String getBeneficiaryName() {
		return beneficiaryName;
	}


	public void setBeneficiaryName(String beneficiaryName) {
		this.beneficiaryName = beneficiaryName;
	}


	public String getIfscCode() {
		return ifscCode;
	}


	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}


	public Double getAmtTransfer() {
		return amtTransfer;
	}


	public void setAmtTransfer(Double amtTransfer) {
		this.amtTransfer = amtTransfer;
	}


	public LocalDate getTransactionDate() {
		return transactionDate;
	}


	public void setTransactionDate(LocalDate transactionDate) {
		this.transactionDate = transactionDate;
	}


	public AccountEntity getAccount() {
		return account;
	}


	public void setAccount(AccountEntity account) {
		this.account = account;
	}


	

	
	
	

}
