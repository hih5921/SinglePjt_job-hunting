package com.pjt.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
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
   
   @RequestMapping(value="/job_search", produces = "application/json; charset=utf8", method = RequestMethod.POST)
   @ResponseBody
   public ResponseEntity<Integer> job_search(@RequestBody Map<String, Object> job_search ) throws JsonProcessingException {
      ResponseEntity<Integer> res=null;
      JobsearchVO vo = new JobsearchVO();
      ObjectMapper om = new ObjectMapper();
      JSONPObject json = new JSONPObject("JSON.parse", job_search);
      String jobsearch_main = om.writeValueAsString(json);
      System.out.println(jobsearch_main);
      
      vo.setJobsearch_main(jobsearch_main);
      vo.setJobsearch_title("test타이틀");
      js.addJobSearch(vo);
      System.out.println("2\n "+job_search);
      
      
      return res;
   }
   
   @RequestMapping("/mypage")
	public String myPage() {
		
		return "/recruiter/R_MyPage";
	}
   
   @RequestMapping("/job_search_select")
	public String job_search_select(Model mo) {
		JobsearchVO vo = js.job_search_select();
		char test = vo.getJobsearch_main().charAt(125);
		String test2 = vo.getJobsearch_main();

		String test10="";
		for(int i=0; i<vo.getJobsearch_main().length()-1;i++) {
				if(test2.charAt(i)==test && test2.charAt(i+1)==110) {
					i++;
					continue;
				}
				test10+=test2.charAt(i);
		}
		System.out.println(test10);
		vo.setJobsearch_main(test10.replace("JSON.parse(",""));
		
		
		System.out.println("vo"+vo.getJobsearch_main());
		System.out.println("실행");
		mo.addAttribute("js", vo);
		System.out.println("실행2");
		return "/recruiter/Job_search_select";
	}
   
   
   
}