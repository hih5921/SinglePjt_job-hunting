package com.pjt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pjt.Service.jobsearchService;
import com.pjt.Service.mainService;
import com.pjt.Service.resumeService;
import com.pjt.command.JobsearchVO;
import com.pjt.command.Picture_ImgVO;
import com.pjt.command.ResumeVO;
import com.pjt.command.UserVO;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/main")
public class mainController {
	
	@Autowired
	mainService ms;
	
	@Autowired
	jobsearchService js;
	
	@Autowired
	resumeService rs;
	
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
			session.setAttribute("user_id", vo.getUser_id());
			session.setAttribute("user_check", vo.getUser_check());
			return "redirect:/main/home";
		}else {
			RA.addFlashAttribute("msg", "아이디 비밀번호를 확인해주세요");
			return "redirect:/main/login";
		}
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
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
	
	@RequestMapping("/job_search_list")
	public String job_search_list(Model mo) {
		List<JobsearchVO> list = ms.jobsearch_list();
		for(JobsearchVO vo : list) {
			vo.setJobsearch_main(vo.getJobsearch_main().replace("JSON.parse", ""));
			vo.setJobsearch_main(vo.getJobsearch_main().replace("\\n", ""));
		}
		mo.addAttribute("list",list);
		return "/Job_search_list";
	}
	
	@RequestMapping("/jobsearch_detaile")
	public String jobsearch_detaile(int jobsearch_num, Model mo) {
		JobsearchVO vo = js.job_search_select(jobsearch_num);
		vo.setJobsearch_main(vo.getJobsearch_main().replace("JSON.parse", ""));
		vo.setJobsearch_main(vo.getJobsearch_main().replace("\\n", ""));
		mo.addAttribute("js", vo);
		return "/jobsearch_detaile";
	}
	
	@RequestMapping("/resume_list")
	public String resume_list(HttpSession session, Model mo) {
		List<ResumeVO> list =  ms.resume_list();
		List<Picture_ImgVO> img_list = rs.getPicture_all();
		for(int i=0;i<img_list.size();i++) {
			img_list.get(i).setImg_uploadPath(img_list.get(i).getImg_uploadPath().replace("\\", "/"));			
		}
		mo.addAttribute("list",list);
		mo.addAttribute("img_list",img_list);
		return "/resume_list";
	}
	
	@RequestMapping("/resume_detaile")
	public String resume_detaile(int resume_num,Model mo) {
		ResumeVO vo =rs.resumeSelect(resume_num);
		Picture_ImgVO ivo =rs.getPicture(resume_num);
		vo.setResume_info(vo.getResume_info().replace("JSON.parse",""));
		mo.addAttribute("re", vo);
		mo.addAttribute("img", ivo);		
		return "/Resume_detaile";
	}
}
