package com.in28minutes.springboot.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@Controller("error")
public class ErrorController {
	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(HttpServletRequest request, Exception ex) {
		ModelAndView view = new ModelAndView();
		view.addObject("exception", ex.getStackTrace());
		view.addObject("url", request.getRequestURL());
		view.setViewName("error");
		return view;
	}
}

//model + view = we can store both model and view details