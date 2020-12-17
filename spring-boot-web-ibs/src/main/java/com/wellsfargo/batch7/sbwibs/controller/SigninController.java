package com.wellsfargo.batch7.sbwibs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wellsfargo.batch7.sbwibs.exception.IBSException;
import com.wellsfargo.batch7.sbwibs.model.IbsUserModel;

@Controller
@RequestMapping("/signin")
public class SigninController {
	
	@GetMapping
	public ModelAndView signInAction() throws IBSException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signin");
		mv.addObject("group",new IbsUserModel());
		return mv;
	}
	
	@GetMapping("/home")
	public String homeAction() throws IBSException {
		return "/signin/home";
	}


}
