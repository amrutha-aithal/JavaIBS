package com.wellsfargo.batch7.sbwibs.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.CustomerModel;
import com.wellsfargo.batch7.sbwibs.service.AccountServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.CustomerServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.FundTransferServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.ServiceProviderServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private CustomerServiceImpl customerService;
	
	@Autowired
	private ServiceProviderServiceImpl spService;
	

	@Autowired
	private FundTransferServiceImpl fundTransferService;

	@Autowired
	private AccountServiceImpl accountService;

	@GetMapping
	public ModelAndView savingsAccountAction(HttpServletRequest request) throws IBSException {
		List<CustomerModel> customers=customerService.getAllPendingRequests();
		ModelAndView mv = new ModelAndView("/admin","customers",customers);
		mv.addObject("serviceproviders",spService.getAllPendingRequests());
		return mv;
	}
	
	@GetMapping("/approve")
	public ModelAndView approveRegistration(@RequestParam("cid") long cId) throws IBSException {
		customerService.updateCustomer(cId,"approved");
		ModelAndView mv = new ModelAndView("redirect:/admin");
		return mv;
	}
	
	@GetMapping("/reject")
	public ModelAndView rejectRegistration(@RequestParam("cid") long cId) throws IBSException {
		customerService.updateCustomer(cId,"declined");
		ModelAndView mv = new ModelAndView("redirect:/admin");
		return mv;
	}
	
	@GetMapping("/approveSP")
	public ModelAndView approveSPRegistration(@RequestParam("spid") long spid) throws IBSException {
		spService.updateCustomer(spid,"approved");
		ModelAndView mv = new ModelAndView("redirect:/admin");
		return mv;
	}
	
	@GetMapping("/rejectSP")
	public ModelAndView rejectSPRegistration(@RequestParam("spid") long spid) throws IBSException {
		spService.updateCustomer(spid,"declined");
		ModelAndView mv = new ModelAndView("redirect:/admin");
		return mv;
	}
	
	@GetMapping("/bankservices")
	public ModelAndView getMonthlyStatements(ModelAndView mv, HttpServletRequest request) throws IBSException {
		mv.setViewName("/fundtransfer/monthlyStatements");
		mv.addObject("accounts", accountService.getAllSavingsAccount());
		return mv;
	}

	@PostMapping("/bankservices")
	public ModelAndView processMonthlyStatements(ModelAndView modelAndView,@RequestParam("accountNum") Long accountNum,@DateTimeFormat(iso=ISO.DATE) @RequestParam("startDate") LocalDate startDate, @DateTimeFormat(iso=ISO.DATE)@RequestParam("endDate") LocalDate endDate,HttpServletRequest request)
			throws IBSException {
		ModelAndView mv= new ModelAndView("fundtransfer/monthlyStatementsDetails","transactions",fundTransferService.getMonthlyStmnt(startDate, endDate, accountNum));
		return mv;

	}
}