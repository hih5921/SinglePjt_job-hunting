package com.pjt.jobhunter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jobhunter")
public class JobhunterController {

	@RequestMapping("/register")
	public String jh_register() {
		
		return "/jobhunter/jobhunter_reg";
	}
	
	@RequestMapping("/resume")
	public String jh_resume() {
		
		return "/jobhunter/Resume";
	}
	
	@RequestMapping("/mypage")
	public String myPage() {
		
		return "/jobhunter/MyPage";
	}
}
