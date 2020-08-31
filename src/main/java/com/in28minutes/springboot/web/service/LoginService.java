package com.in28minutes.springboot.web.service;

import org.springframework.stereotype.Service;

@Service                             /*Important to wire this dependency to controller class*//*please control this class*/
public class LoginService {
	
	public boolean validateUser(String userId, String password) {
		return userId.equalsIgnoreCase("Shubham") && 
				password.equalsIgnoreCase("123");		/*return true id credentials entered by 
															user matches with data*/
	}
	
	
	
}
