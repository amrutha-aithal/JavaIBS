package com.wellsfargo.batch7.sbwibs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@GetMapping({"","/","/home"})
	public String homeAction() {
		return "home-page";
	}
	
	@RequestMapping("/header")
	public ModelAndView headerAction() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("header-fragment");
		return mv;
	}
	
	@RequestMapping("/header1")
	public ModelAndView header1Action() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("header-fragment1");
		return mv;
	}
	
	@RequestMapping("/signin")
	public ModelAndView signinAction() {
		ModelAndView mv1 = new ModelAndView();
		mv1.setViewName("signin");
		return mv1;
	}
	
	@RequestMapping("/signup")
	public ModelAndView signupAction() {
		ModelAndView mv2 = new ModelAndView();
		mv2.setViewName("signup");
		return mv2;
	}
	
	@RequestMapping("/register")
	public String signupCustomerAction() {
		/*ModelAndView mv2 = new ModelAndView();
		mv2.setViewName("customer");
		return mv2;*/
		return "redirect:/customer";
	}
	
	

}