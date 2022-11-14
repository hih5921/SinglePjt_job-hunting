package com.pjt.recruiter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/recruiter")
public class RecruiterController {
	
	@RequestMapping("/job_search")
	public String job_search() {
		
		return "/recruiter/Job_search";
	}
	
	
}
