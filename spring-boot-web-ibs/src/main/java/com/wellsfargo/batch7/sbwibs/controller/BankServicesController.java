package com.wellsfargo.batch7.sbwibs.controller;

import java.security.Principal;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.FundTransferModel;
import com.wellsfargo.batch7.sbwibs.service.AccountServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.FundTransferServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.ServiceProviderServiceImpl;

@Controller
@RequestMapping("/bankservices")
public class BankServicesController {

	@Autowired
	private FundTransferServiceImpl fundTransferService;

	@Autowired
	private ServiceProviderServiceImpl spService;
	
	@Autowired
	private AccountServiceImpl accountService;

	@GetMapping
	public ModelAndView fundTransferAction(HttpServletRequest request) throws IBSException {
		ModelAndView mv = new ModelAndView("fundtransfer/billpayment", "billPay", new FundTransferModel());
		Principal principal = request.getUserPrincipal();
		String userName = principal.getName();
		mv.addObject("accounts", accountService.getAllSavingsAccount(userName));
		mv.addObject("serviceproviders", spService.getAll());
		return mv;
	}
	
	@GetMapping("/statements")
	public ModelAndView getMonthlyStatements(ModelAndView mv, HttpServletRequest request) throws IBSException {
		Principal principal = request.getUserPrincipal();
		String currentUserName = principal.getName();
		mv.setViewName("/fundtransfer/transactionsSP");
		mv.addObject("transactions", fundTransferService.getAllPayments(currentUserName));
		return mv;
	}

	@PostMapping("/billpayment")
	public ModelAndView fundTransferAction(
			@ModelAttribute("billPay") @Valid FundTransferModel billPay,
			BindingResult result,HttpServletRequest request) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("fundtransfer/billpayment");
		if(result.hasErrors()) {
			mv.addObject("billPay",billPay);	
		}else {
			fundTransferService.billPayment(billPay);
			mv = new ModelAndView("redirect:/fundtransfer/transactionsList","successMsg","Bill Payment is Successful");
		}
		return mv;
	}
	
}
