package com.wellsfargo.batch7.sbwibs.service;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.repo.CustomerRepo;
import com.wellsfargo.batch7.sbwibs.util.EMParser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepo customerRepo;

	@Override
	public CustomerModel validateUser(String emailId) throws IBSException {

		if (!customerRepo.existsByEmailId(emailId)) {
			throw new IBSException("Email Id does not exists");
		}
		return EMParser.parse(customerRepo.findByEmailId(emailId));
	}
}
