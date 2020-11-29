package com.wellsfargo.batch7.sbwibs.service;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;
import com.wellsfargo.batch7.sbwibs.repo.CustomerRepo;
import com.wellsfargo.batch7.sbwibs.util.EMParser;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CustomerServiceImpl implements CustomerService {


	@Autowired
	private CustomerRepo customerRepo;
	
	@Transactional
	@Override
	public CustomerModel add(CustomerModel customer) throws IBSException {
		if(customer!=null) {
			//IbsUserModel im = new IbsUserModel();
			/*if(CustomerRepo.existsById(im.getUserId())) {
				throw new IBSException("Customer#"+customer.getUserId()+" already exists");
			}*/
			customer = EMParser.parse(customerRepo.save(EMParser.parse(customer)));
		}
		return customer;
	}


}
