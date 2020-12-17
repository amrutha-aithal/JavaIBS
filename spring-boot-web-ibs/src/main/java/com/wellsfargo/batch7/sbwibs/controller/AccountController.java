package com.wellsfargo.batch7.sbwibs.controller;


import java.util.List;

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
import com.wellsfargo.batch7.sbwibs.service.AccountServiceImpl;

@Controller
@RequestMapping("/accounts")
public class AccountController {
	
	@Autowired
	private AccountServiceImpl accountService;
	
	@GetMapping
	public String accountAction() throws IBSException {
		return "accounts/accounts";
	}
	
	@GetMapping("/accounts")
	public ModelAndView savingsAccountAction() throws IBSException {
		List<AccountModel> account=accountService.getAllSavingsAccount();
		ModelAndView mv = new ModelAndView("/accounts/savingsAccount","account",account);
		return mv;
	}
	
	@GetMapping("/fixeddeposit")
	public ModelAndView getAllFixedDepositAction() throws IBSException {
		List<AccountModel> account=accountService.getAllFixedDepositAccount();
		ModelAndView mv = new ModelAndView("/accounts/fixeddeposit","account",account);
		return mv;
	}
	
	@GetMapping("/newSavingsAccount")
	public ModelAndView newSavingsAccountAction() throws IBSException {
//		accountService.createSavingsAccount();
//		List<AccountModel> account=accountService.getAllSavingsAccount();
		ModelAndView mv = new ModelAndView("/accounts/newsavingAccount","account",new AccountModel());
		return mv;
	}
	
	@PostMapping("/newSavingsAccount")
	public ModelAndView newSavingsAccountAction(
			@ModelAttribute("account") @Valid AccountModel account,
			BindingResult result) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accounts/newsavingAccount");
		
		if(result.hasErrors()) {
			mv.addObject("account",account);	
		}else {
			accountService.createSavingsAccount(account);
			mv = new ModelAndView("redirect:/accounts/accounts");
		}
		return mv;
	}
	@GetMapping("/newFixedDeposit")
	public ModelAndView fixedDepositAction() throws IBSException {
		ModelAndView mv=new ModelAndView("accounts/newfixeddeposit","account",new AccountModel());
		return mv;
	}
	
	@PostMapping("/newFixedDeposit")
	public ModelAndView newfixedDepositAction(
			@ModelAttribute("account") @Valid AccountModel account,
			BindingResult result) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accounts/newfixeddeposit");
		
		if(result.hasErrors()) {
			mv.addObject("account",account);	
		}else {
			accountService.createFixedDeposit(account);
			mv = new ModelAndView("redirect:/accounts/fixeddeposit");
		}
		return mv;
	}

	@GetMapping("/recurringdeposit")
	public ModelAndView getAllrecurringdepositAction() throws IBSException {
		List<AccountModel> account=accountService.getAllRecurringDepositAccount();
		ModelAndView mv = new ModelAndView("/accounts/recurringdeposit","account",account);
		return mv;
	}
	
	@GetMapping("/newRecurringDeposit")
	public ModelAndView RecurringDepositAction() throws IBSException {
		ModelAndView mv=new ModelAndView("accounts/newrecurringdeposit","account",new AccountModel());
		return mv;
	}
	
	@PostMapping("/newRecurringDeposit")
	public ModelAndView newRecurringDepositAction(
			@ModelAttribute("account") @Valid AccountModel account,
			BindingResult result) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accounts/newfixeddeposit");
		
		if(result.hasErrors()) {
			mv.addObject("account",account);	
		}else {
			accountService.createRecurringDeposit(account);
			mv = new ModelAndView("redirect:/accounts/recurringdeposit");
		}
		return mv;
	}

	
}
