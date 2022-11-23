package com.pjt.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pjt.Service.jobsearchService;
import com.pjt.command.JobsearchVO;

@Controller
@RequestMapping("/recruiter")
public class RecruiterController {
   
	@Autowired
	jobsearchService js;
	
	
   @GetMapping("/job_search")
   public String job_search() {
      
      return "/recruiter/Job_search";
   }
   
   @PostMapping("/job_search")
   @ResponseBody
   public ResponseEntity<Integer> job_search(@RequestBody Map<String, Object> job_search ) {
      ResponseEntity<Integer> res=null;
      JobsearchVO vo = new JobsearchVO();
      vo.setJobsearch_main(job_search);
      vo.setJobsearch_title("test타이틀");
      js.addJobSearch(vo);
      System.out.println("2\n "+job_search);
      
      
      return res;
   }
   
   
}