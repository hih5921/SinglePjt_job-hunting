package com.pjt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class mainController {
	
	@RequestMapping("/home")
	public String main() {
		
		return "/home";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "/login";
	}
}
