package com.pjt.Service;

import java.util.List;

import com.pjt.command.JobsearchVO;
import com.pjt.command.UserVO;

public interface mainService {
	public void addUser(UserVO vo);
	public int checkID(String user_id);
	public int login(UserVO vo);
	public List<JobsearchVO> jobsearch_list();
	
	
}
