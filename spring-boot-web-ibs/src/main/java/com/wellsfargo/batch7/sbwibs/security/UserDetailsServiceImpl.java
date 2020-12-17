package com.wellsfargo.batch7.sbwibs.security;

import java.time.LocalDate;
import java.util.Collections;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.wellsfargo.batch7.sbwibs.util.EMParser;
import com.wellsfargo.batch7.sbwibs.entity.AccountEntity;
import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;
import com.wellsfargo.batch7.sbwibs.entity.IbsUserEntity;
import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;
import com.wellsfargo.batch7.sbwibs.repo.AccountRepo;
import com.wellsfargo.batch7.sbwibs.repo.IbsUserRepo;
@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private IbsUserRepo userRepo;
	
	@Autowired
	private AccountRepo accountRepo;
	
	@Autowired
	private PasswordEncoder encoder;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		if(!userRepo.existsByUserName(username)) {
			throw new UsernameNotFoundException("invlaid user credits!");
		}
		
		IbsUserEntity user = userRepo.findByUserName(username);
		
		return new User(user.getUserName(), user.getPassword(), 
				Collections.singletonList(new SimpleGrantedAuthority(user.getRole())));
	}
	
	public void register(CustomerModel user) throws IBSException {
		if(user!=null) {
			if(user.getPassword().equals(user.getConfirmPassword())) {
//				user.setUserId(1L);
				user.setPassword(encoder.encode(user.getPassword()));
				LocalDate depositDate= LocalDate.now();
				AccountModel account = new AccountModel(null,"savings",1000.0,4.75,depositDate,null,null,null,null,null,1000.0,user);
				account.setCustomer(EMParser.parse(userRepo.save(EMParser.parse(user))));
				accountRepo.save(EMParser.parse(account));
				
			}else {
				throw new IBSException("Password do not match");
			}
		}
	}
	@Transactional
	@Modifying
	public void resetPassword(String userName,String Password,String ConfirmPassword) throws IBSException {
		
		IbsUserEntity user=	userRepo.findByUserName(userName);
		
		if(Password.equals(ConfirmPassword)) {
			user.setPassword(encoder.encode(Password));
			userRepo.save(user);
		}else {
			throw new IBSException("Password do not match");
		}
	}
}
