package com.wellsfargo.batch7.sbwibs.entity;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ibs_customer")
@Inheritance(strategy=InheritanceType.JOINED)
public class CustomerEntity extends IbsUserEntity {
	
	@Column(name="cname",nullable=false)
	private String customerName;
	
	@Column(name="dob",nullable=false)
	private LocalDate dateOfBirth;
	
	@Column(name="phone",nullable=false,unique=true)
	private String phoneNumber;

	@Column(name="address")
	private String address;
	
	@Column(name="email",nullable=false,unique=true)
	private String emailId;
	
	@Column(name="txnPwd")
	private String txnPassword;
	
	@OneToMany(mappedBy="customer",cascade=CascadeType.ALL)
	private Set<AccountEntity> savAccount;
	
	
	public CustomerEntity() {
		
	}	

	public CustomerEntity(Long userId, String userName, String password, String role,String customerName, LocalDate dateOfBirth, String phoneNumber, String address, String emailId,
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
	public Set<AccountEntity> getSavAccount() {
		return savAccount;
	}

	public void setSavAccount(Set<AccountEntity> savAccount) {
		this.savAccount = savAccount;
	}



	
	
}
