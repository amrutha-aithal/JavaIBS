package com.wellsfargo.batch7.ibs.entities;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ServiceProvider extends IbsUser {

	@Column(name = "sid")
	private String spId;

	@Column(name = "spAccNo")
	private String spAccountNo;

	@Column(name = "spName")
	private String spName;
	
	public ServiceProvider() {

	}

	public ServiceProvider(String spId, String spAccountNo, String spName) {
		super();
		this.spId = spId;
		this.spAccountNo = spAccountNo;
		this.spName = spName;
	}

	public String getSpId() {
		return spId;
	}

	public void setSpId(String spId) {
		this.spId = spId;
	}

	public String getSpAccountNo() {
		return spAccountNo;
	}

	public void setSpAccountNo(String spAccountNo) {
		this.spAccountNo = spAccountNo;
	}

	public String getSpName() {
		return spName;
	}

	public void setSpName(String spName) {
		this.spName = spName;
	}

	
}
