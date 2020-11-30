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

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;
import com.wellsfargo.batch7.sbwibs.service.IbsUserService;

@Controller
@RequestMapping("/signin")
public class SigninController {
	
	@Autowired
	private IbsUserService iuService;
	
	@GetMapping
	public ModelAndView groupsAction() throws IBSException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signin");
		mv.addObject("group",new IbsUserModel());
		return mv;
	}
	
	
	@GetMapping("/forgotpassword")
	public String forgotpasswordAction() throws IBSException {
		return "/signin/forgotpassword";
	}
	
	@GetMapping("/home")
	public String homeAction() throws IBSException {
		return "/signin/home";
	}
	
	@GetMapping("/signout")
	public String signoutAction() throws IBSException {
		return "pages/home-page";
	}

	@PostMapping("/submit")
	public ModelAndView submitAction(
			@ModelAttribute("group") @Valid IbsUserModel group,
			BindingResult result) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signin");
		
		if(result.hasErrors()) {
			mv.addObject("group",group);	
		}else {
			mv.setViewName("/signin/home");
		}
		
		//mv.addObject("groups",iuService.getAll());
		return mv;
	}
	
	
	

}
