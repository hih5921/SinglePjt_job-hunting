package com.pjt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pjt.Service.mainService;
import com.pjt.command.UserVO;

@Controller
@RequestMapping("/main")
public class mainController {
	
	@Autowired
	mainService ms;
	
	@RequestMapping("/home")
	public String main() {
		
		return "/home";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "/login";
	}
	
	@GetMapping("/register")
	public String register() {
		
		return "/register";
	}
	
	@PostMapping("/register")
	public String register(UserVO vo) {
		ms.addUser(vo);
		return "/register";
	}
	
	@PostMapping("/checkId")
	public ResponseEntity<Integer> recommend(String user_id){
		ResponseEntity<Integer> result = null;				
		result = new ResponseEntity<Integer>(ms.checkID(user_id),HttpStatus.OK);
		return result;  
	}
}
