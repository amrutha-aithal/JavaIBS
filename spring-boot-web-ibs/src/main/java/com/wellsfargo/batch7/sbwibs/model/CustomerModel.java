package com.wellsfargo.batch7.sbwibs.model;


import java.io.File;
import java.time.LocalDate;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class CustomerModel extends IbsUserModel {
	
	@NotNull(message="Customer Name is mandatory")
	@NotBlank(message="Customer name can not be null")
	private String customerName;
	
	@NotNull(message="DoB is mandatory")
	@DateTimeFormat(iso=ISO.DATE)
	@Past(message="DoB should be a past Date")
	private LocalDate dateOfBirth;
	
	@NotNull(message="Phone num is mandatory")
	@NotBlank(message="Phone num can not be null")
	@Pattern(regexp = "[1-9][0-9]{9}",message = "Mobile number must be exactly ten digits")
	private String phoneNumber;
	
	@NotNull(message="Address is mandatory")
	@NotBlank(message="Address can not be null")
	private String address;
	
	@NotNull(message="Email ID is mandatory")
	@NotBlank(message="Email ID can not be null")
	@Email(message = "Email Id is not valied")
	private String emailId;

	private String txnPassword;
	
	private AccountModel savAccount;
	
	public CustomerModel() {
		
	}	

	public CustomerModel(Long userId, String userName, String password, String role,String customerName, LocalDate dateOfBirth, String phoneNumber, String address, String emailId,
			String txnPassword) {
		super(userId, userName, password, role);
		this.customerName = customerName;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.emailId = emailId;
		this.txnPassword = txnPassword;
		
	}

	
	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		
		this.dateOfBirth = dateOfBirth;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getTxnPassword() {
		return txnPassword;
	}

	public void setTxnPassword(String txnPassword) {
		this.txnPassword = txnPassword;
	}
	public AccountModel getSavAccount() {
		return savAccount;
	}

	public void setSavAccount(AccountModel savAccount) {
		this.savAccount = savAccount;
	}



	
	
}