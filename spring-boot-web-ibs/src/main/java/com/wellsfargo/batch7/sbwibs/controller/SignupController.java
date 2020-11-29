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
@RequestMapping("/signup")
public class SignupController {

	
	@Autowired
	private IbsUserService iuService;
	
	@GetMapping
	public ModelAndView groupsAction() throws IBSException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		mv.addObject("group",new IbsUserModel());
		return mv;
	}
	
	
	@GetMapping("/reset")
	public String resetAction() throws IBSException {
		return "redirect:/signup";
	}
	
	@PostMapping("/add")
	public ModelAndView addAction(
			@ModelAttribute("group") @Valid IbsUserModel group,
			BindingResult result) throws IBSException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		
		if(result.hasErrors()) {
			mv.addObject("group",group);	
		}else {
			iuService.add(group);
			mv.addObject("group",new IbsUserModel());
		}
		
		//mv.addObject("groups",iuService.getAll());
		return mv;
	}
	
	
}