package com.wellsfargo.batch7.sbwibs.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;
import com.wellsfargo.batch7.sbwibs.service.AccountService;

@Controller
@RequestMapping("/accounts")
public class AccountController {
	
//	@Autowired
//	private AccountService accountService;
	
	@GetMapping
	public String accountAction() throws IBSException {
		return "accounts/accounts";
	}
	@GetMapping("/fixeddeposit")
	public String fixedDepositAction() throws IBSException {
		return "accounts/fixeddeposit";
	}

	@GetMapping("/recurringdeposit")
	public String recurringdepositAction() throws IBSException {
		return "accounts/recurringdeposit";
	}

	
}
