package com.controller;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pojo.User;
import userService.UserService;
@Controller
public class Maincontroller {

	final static Logger logger = Logger.getLogger(Maincontroller.class);
	@Autowired
	private UserService userService;
	@RequestMapping("/index") 
	public String viewNameIndex()
	{
		return "index";
	}
	@RequestMapping("/login") 
	public String viewNameLogin()
	{
		return "login";
	}
	@RequestMapping("/contactus") 
	public String viewNameContactus()
	{
		return "contactus";
	}
	@RequestMapping("/aboutus") 
	public String viewNameAboutus()
	{
		return "aboutus";
	}
	@RequestMapping("/SuccessfulRegistration")
	public String successfulReturn()
	{
		return "SuccessfulRegistration";
	}
	
	@RequestMapping("/RegistrationError")
	public String RegistrationError()
	{
		return "RegistrationError";
	}
	
	@RequestMapping("/Check")
	public String Check(@ModelAttribute("adduser") User user,ModelMap model)
	{
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		//rd.addFlashAttribute("ajay", "Cjal");
		model.addAttribute("Username",user.getUsername());
		User result=userService.getByUserName(user.getUsername());
		System.out.println(result);
		if(result == null)
		{
			userService.addUser(user);
			return "redirect:SuccessfulRegistration.html";
		}
		else
		{
			return "redirect:RegistrationError.html";
		}
				
	}
	
	
}
