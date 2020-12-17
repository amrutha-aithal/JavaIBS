package com.wellsfargo.batch7.sbwibs.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;
import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.repo.IbsUserRepo;
import com.wellsfargo.batch7.sbwibs.security.UserDetailsServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.CustomerService;
import com.wellsfargo.batch7.sbwibs.util.EMParser;

@Controller
@RequestMapping("/forgotPassword")
public class PasswordController {

	@Autowired
	private UserDetailsServiceImpl userService;
	
	@Autowired
	private CustomerService customerService;

	@GetMapping
	public ModelAndView displayForgotPasswordPage() throws IBSException {
		return new ModelAndView("/signin/forgotpassword");
	}

	@PostMapping
	public ModelAndView processForgotPasswordForm(ModelAndView modelAndView, @RequestParam("emailId") String emailId) throws IBSException {
		CustomerModel customer = customerService.validateUser(emailId);
		if(customer!=null) {
			modelAndView.setViewName("signin/resetpassword");
			
		} else {
			modelAndView.addObject("errorMsg", "User doesnt exists");
			modelAndView.setViewName("redirect:/forgotPassword");
		}
		return modelAndView;
	}
	
	@PostMapping("/reset")
	public ModelAndView resetPassword(ModelAndView modelAndView, @RequestParam("userName") String userName,
			@RequestParam("password") String password,@RequestParam("confirmPassword") String confirmPassword) throws IBSException {
		
		userService.resetPassword(userName,password,confirmPassword);
		modelAndView.setViewName("redirect:/signin");

		return modelAndView;
	}

}
