package com.pjt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjt.Mapper.mainMapper;
import com.pjt.command.JobsearchVO;
import com.pjt.command.ResumeVO;
import com.pjt.command.UserVO;

@Service
public class mainServiceImpl implements mainService{
	
	@Autowired
	mainMapper mm;
	
	@Override
	public void addUser(UserVO vo) {
		mm.addUser(vo);
	}
	
	@Override
	public int checkID(String user_id) {
		System.out.println("service / "+user_id);
		return mm.checkID(user_id);
	}
	
	@Override
	public int login(UserVO vo) {
		
		return mm.login(vo);
	}
	
	@Override
	public List<JobsearchVO> jobsearch_list() {
		
		return mm.jobsearch_list();
	}
	
	@Override
	public List<ResumeVO> resume_list() {
		
		return mm.resume_list();
	}
}
