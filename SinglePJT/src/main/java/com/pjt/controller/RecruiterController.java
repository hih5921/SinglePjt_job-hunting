package com.pjt.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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
import com.pjt.Service.resumeService;
import com.pjt.command.JobsearchVO;
import com.pjt.command.Picture_ImgVO;
import com.pjt.command.ResumeVO;


@Controller
@RequestMapping("/recruiter")
public class RecruiterController {
   
	@Autowired
	jobsearchService js;
	
	@Autowired
	resumeService rs ;
	
	
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
      ObjectMapper om = new ObjectMapper();
      JSONPObject json = new JSONPObject("JSON.parse", job_search);
      String jobsearch_main = om.writeValueAsString(json);
      vo.setJobsearch_main(jobsearch_main);
      js.modifyJobSearch(vo);
      return res;
   }
   
   
   @RequestMapping("/mypage")
	public String myPage() {
		
		return "/recruiter/R_MyPage";
	}
   
   @RequestMapping("/job_search_select")
	public String job_search_select(Model mo,int jobsearch_num) {
		JobsearchVO vo = js.job_search_select(jobsearch_num);
		if(vo.getJobsearch_main3()!=null) {
			vo.setJobsearch_main(vo.getJobsearch_main()+vo.getJobsearch_main2()+vo.getJobsearch_main3());
		}else if(vo.getJobsearch_main2() !=null ) {
			vo.setJobsearch_main(vo.getJobsearch_main()+vo.getJobsearch_main2());
		}
		vo.setJobsearch_main(vo.getJobsearch_main().replace("JSON.parse", ""));
		vo.setJobsearch_main(vo.getJobsearch_main().replace("\\n", ""));
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
   
   @RequestMapping("/jobsearch_delete")
   public ResponseEntity<Integer> jobsearch_delete(int jobsearch_num) {
	   return new ResponseEntity<>(js.jobsearch_delete(jobsearch_num), HttpStatus.OK);
   }
   
   @RequestMapping("/jobsearch_public")
   public ResponseEntity<Integer> jobsearch_public(int jobsearch_num) {
	   return new ResponseEntity<>(js.jobsearch_public(jobsearch_num), HttpStatus.OK);
   }
   
	//지원 이력서 확인
	@RequestMapping("/accept_management")
	public String accept_management(Model mo,HttpSession session) {
		List<Picture_ImgVO> img_list = rs.getPicture_all();
		for(int i=0;i<img_list.size();i++) {
			img_list.get(i).setImg_uploadPath(img_list.get(i).getImg_uploadPath().replace("\\", "/"));
						
		}
		mo.addAttribute("img_list",img_list);
		mo.addAttribute("list", js.acceptlist((String)session.getAttribute("user_id"))); 
		return "/recruiter/accept_management";
	}
   
   
}