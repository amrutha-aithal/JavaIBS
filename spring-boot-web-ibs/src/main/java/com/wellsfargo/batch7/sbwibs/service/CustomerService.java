package com.wellsfargo.batch7.sbwibs.service;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;

public interface CustomerService {
		
	CustomerModel validateUser(String emailId) throws IBSException;
	
}

