package com.wellsfargo.batch7.sbwibs.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
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
import com.wellsfargo.batch7.sbwibs.model.FundTransferModel;
import com.wellsfargo.batch7.sbwibs.service.AccountService;
import com.wellsfargo.batch7.sbwibs.service.AccountServiceImpl;
import com.wellsfargo.batch7.sbwibs.service.FundTransferService;
import com.wellsfargo.batch7.sbwibs.service.FundTransferServiceImpl;

@Controller
@RequestMapping("/fundtransfer")
public class FundTransferController {
	
	@Autowired
	private FundTransferServiceImpl fundTransferService;
	
	@Autowired
	private AccountServiceImpl accountService;
	
	@GetMapping
	public String fundTransferAction() throws IBSException {
		return "fundtransfer/fundtransfer";
	}
	
	@GetMapping("/newBeneficiary")
	public ModelAndView newBeneficiaryAction() {
		ModelAndView mv = new ModelAndView("fundtransfer/newBeneficiary","beneficiary",new FundTransferModel());
		mv.addObject("isNew",true);
		return mv;
	}
	@PostMapping("/newBeneficiary")
	public ModelAndView addBeneficiaryAction(
			@ModelAttribute("beneficiary") @Valid FundTransferModel beneficiary,
			BindingResult result
			) throws IBSException {
		ModelAndView mv=null;		
		if(result.hasErrors()) {
			mv = new ModelAndView("fundtransfer/newBeneficiary","beneficiary",beneficiary);
			mv.addObject("isNew",true);
		}else {
			fundTransferService.add(beneficiary);
			mv = new ModelAndView("redirect:/fundtransfer");
		}
		
		return mv;
	}

//	@PostMapping("/newBeneficiary")
//	public ModelAndView newBeneficiaryAction(
//			@ModelAttribute("beneficiary") @Valid FundTransferModel beneficiary,
//			BindingResult result,HttpServletRequest request) throws IBSException {
//		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("fundtransfer/newBeneficiary");
//		
////		Principal principal=request.getUserPrincipal();
////		String currentUserName=principal.getName();
//		
//		if(result.hasErrors()) {
//			mv.addObject("beneficiary",beneficiary);	
//		}else {
//			fundTransferService.add(beneficiary);
////			fundtransferService.add(beneficiary,currentUserName);
//			mv = new ModelAndView("redirect:/fundtransfer/fundtransfer");
//		}
//		return mv;
//	}
}
