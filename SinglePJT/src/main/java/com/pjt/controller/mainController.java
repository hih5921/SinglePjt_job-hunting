package com.pjt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pjt.Service.mainService;
import com.pjt.command.UserVO;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/main")
public class mainController {
	
	@Autowired
	mainService ms;
	
	@RequestMapping("/home")
	public String main() {
		
		return "/home";
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "/login";
	}
	
	@PostMapping("/login")
	public String login(UserVO vo, HttpSession session,RedirectAttributes RA) {
		if(ms.login(vo)==1) {
			session.setAttribute("id", vo.getUser_id());
			return "/home";
		}else {
			RA.addFlashAttribute("msg", "아이디 비밀번호를 확인해주세요");
			return "redirect:/main/login";
		}
		
	}
	
	@GetMapping("/register")
	public String register() {
		
		return "/register";
	}
	
	@PostMapping("/register")
	public String register(UserVO vo) {
		System.out.println(vo);
		ms.addUser(vo);
		return "/login";
	}
	
	@PostMapping("/checkId")
	public ResponseEntity<Integer> recommend(String user_id){
		ResponseEntity<Integer> result = null;	
		int check =ms.checkID(user_id);
		result = new ResponseEntity<Integer>(check,HttpStatus.OK);
		return result;  
	}
}
