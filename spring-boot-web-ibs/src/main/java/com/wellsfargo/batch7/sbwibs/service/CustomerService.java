package com.wellsfargo.batch7.sbwibs.service;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;

public interface CustomerService {
	

		CustomerModel add(CustomerModel customer) throws IBSException;
		
		
	}

