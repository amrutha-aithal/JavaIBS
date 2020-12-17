package com.wellsfargo.batch7.sbwibs.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.wellsfargo.batch7.sbwibs.security.UserDetailsServiceImpl;
import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;
import com.wellsfargo.batch7.sbwibs.service.IbsUserService;

@Controller
@RequestMapping("/signup")
public class SignupController {

	
	@Autowired
	private UserDetailsServiceImpl userService;
		
	@GetMapping
	public ModelAndView groupsAction() throws IBSException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		mv.addObject("customer",new CustomerModel());
		return mv;
	}
	
	@PostMapping
	public ModelAndView addCustomerAction(
			@ModelAttribute("customer") @Valid CustomerModel customer,
			BindingResult result) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		
		if(result.hasErrors()) {
			mv.addObject("customer",customer);	
		}else {
			userService.register(customer);
			mv = new ModelAndView("redirect:/upload");
		}
		return mv;
	}
	
	
}
