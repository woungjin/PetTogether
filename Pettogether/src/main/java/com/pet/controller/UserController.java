package com.pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	@RequestMapping("/userAdd") 
	public String userAdd() {
		return "user/userAdd";
	}
	
}
