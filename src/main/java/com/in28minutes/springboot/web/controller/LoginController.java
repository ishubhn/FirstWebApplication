package com.in28minutes.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {
	
//	@ResponseBody			/*to send string back to browser instead of jsp*/
//	@RequestMapping(value="/login", method = RequestMethod.GET)
//	@RequestMapping("/login")
//	public String loginMessage(ModelMap model) {
////		model.put("name", name);
////		model.put("password",pass);
//		return "login";
//		
//	}
	@Autowired					/*wired to LoginService as it has @Component declared and matches with LoginService 
									name here, so spring knew that is needs to create instance obj*/
	LoginService service;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLogin(ModelMap model) {
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String doLogin(ModelMap model, @RequestParam String name, @RequestParam String pass) {
		boolean isValidUser = service.validateUser(name, pass);
		
		if(!isValidUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "login";
		}
		
		model.put("name", name); //to get param from user and add into jsp
		model.put("pass", pass);
		return "welcome";
	}
}
