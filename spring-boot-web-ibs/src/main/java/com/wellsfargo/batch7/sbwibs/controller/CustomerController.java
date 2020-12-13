package com.wellsfargo.batch7.sbwibs.controller;

import java.time.LocalDate;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;
import com.wellsfargo.batch7.sbwibs.security.UserDetailsServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.CustomerService;
import com.wellsfargo.batch7.sbwibs.service.IbsUserService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	//@Autowired
	//private AccountService accountService;
	
	@Autowired
	private UserDetailsServiceImpl userService;
	
	@Autowired
	private IbsUserService ibuService;
	
	@GetMapping
	public ModelAndView groupsAction() throws IBSException {
		ModelAndView mv = new ModelAndView("customer","customer",new CustomerModel());
		return mv;
	}
	
	@GetMapping("/reset")
	public String resetAction() throws IBSException {
		return "redirect:/customer";
	}
		

	/*@PostMapping("/add")
	public ModelAndView addCustomerAction(
			@ModelAttribute("group1") @Valid CustomerModel group1,
			BindingResult result
			) throws IBSException {
		ModelAndView mv=null;	
		
		if(result.hasErrors()) {
			mv = new ModelAndView("customer/signup-form-page","group1",group1);
			mv.addObject("isNew",true);
		}else {
			customerService.add(group1);
			mv = new ModelAndView("redirect:/signup-form-page");
		}
		
		return mv;
	}*/
	
	@PostMapping("/add")
	public ModelAndView addCustomerAction(
			@ModelAttribute("customer") @Valid CustomerModel customer,
			BindingResult result) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		
		if(result.hasErrors()) {
			mv.addObject("customer",customer);	
		}else {
//			customer.setSavAccount(new AccountModel("1234567890100", "Savings", 12000.00,4.25,
//				null, null, 12500.00, 3.5,
//					36.0, 100000.00, 120000.00));
			userService.register(customer);
			mv = new ModelAndView("redirect:/signin");
//			customerService.add(customer);
//			mv.addObject("customer",new CustomerModel());
		}
		
		//mv.addObject("groups",iuService.getAll());
		return mv;
	}
}
