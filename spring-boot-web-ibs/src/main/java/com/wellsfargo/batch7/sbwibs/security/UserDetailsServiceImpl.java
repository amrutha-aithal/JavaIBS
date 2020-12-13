package com.wellsfargo.batch7.sbwibs.security;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.wellsfargo.batch7.sbwibs.util.EMParser;
import com.wellsfargo.batch7.sbwibs.entity.IbsUserEntity;
import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;
import com.wellsfargo.batch7.sbwibs.repo.IbsUserRepo;
@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private IbsUserRepo userRepo;
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
				user.setPassword(encoder.encode(user.getPassword()));
				userRepo.save(EMParser.parse(user));
			}else {
				throw new IBSException("Password do not match");
			}
		}
	}
}
