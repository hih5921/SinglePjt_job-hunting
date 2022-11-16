package com.pjt.jobhunter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jobhunter")
public class JobhunterController {

	
	@RequestMapping("/resume")
	public String jh_resume() {
		
		return "/jobhunter/Resume";
	}
	
	@RequestMapping("/mypage")
	public String myPage() {
		
		return "/jobhunter/MyPage";
	}
}
