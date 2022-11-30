package com.pjt.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
   public ResponseEntity<Integer> job_search(@RequestBody Map<String, Object> job_search ,JobsearchVO jvo) throws JsonProcessingException {
      ResponseEntity<Integer> res=null;
      JobsearchVO vo = jvo;
      ObjectMapper om = new ObjectMapper();
      JSONPObject json = new JSONPObject("JSON.parse", job_search);
      String jobsearch_main = om.writeValueAsString(json);
      vo.setJobsearch_main(jobsearch_main);
      js.addJobSearch(vo);
      
      return res;
   }
   
   @RequestMapping(value="/job_search_modify", produces = "application/json; charset=utf8", method = RequestMethod.POST)
   @ResponseBody
   public ResponseEntity<Integer> job_search_modify(@RequestBody Map<String, Object> job_search ,JobsearchVO jvo) throws JsonProcessingException {
      ResponseEntity<Integer> res=null;
      JobsearchVO vo = jvo;
      System.out.println("수정"+jvo);
      ObjectMapper om = new ObjectMapper();
      JSONPObject json = new JSONPObject("JSON.parse", job_search);
      String jobsearch_main = om.writeValueAsString(json);
      vo.setJobsearch_main(jobsearch_main);
      js.modifyJobSearch(vo);
      System.out.println("실행"+vo);
      return res;
   }
   
   
   @RequestMapping("/mypage")
	public String myPage() {
		
		return "/recruiter/R_MyPage";
	}
   
   @RequestMapping("/job_search_select")
	public String job_search_select(Model mo,int jobsearch_num) {
		JobsearchVO vo = js.job_search_select(jobsearch_num);
		vo.setJobsearch_main(vo.getJobsearch_main().replace("JSON.parse", ""));
		vo.setJobsearch_main(vo.getJobsearch_main().replace("\\n", ""));
		System.out.println(vo);
		mo.addAttribute("js", vo);
		return "/recruiter/Job_search_select";
	}
   
   @RequestMapping("/job_search_management")
   public String job_search_management(HttpSession session, Model mo ) {
	   String user_id= (String)session.getAttribute("user_id");
		List<JobsearchVO> list = js.job_search_management(user_id);
		for(JobsearchVO vo : list) {
			vo.setJobsearch_main(vo.getJobsearch_main().replace("JSON.parse", ""));
			vo.setJobsearch_main(vo.getJobsearch_main().replace("\\n", ""));
		}
		mo.addAttribute("list",list);
		
	   return "/recruiter/Job_search_management";
   }
   
   
}