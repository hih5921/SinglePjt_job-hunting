package com.pjt.Service;

import java.util.List;

import com.pjt.command.JobsearchVO;
import com.pjt.command.ResumeVO;
import com.pjt.command.UserVO;

public interface mainService {
	public void addUser(UserVO vo);
	public int checkID(String user_id);
	public int login(UserVO vo);
	public List<JobsearchVO> jobsearch_list();
	public List<ResumeVO> resume_list();
	public int accept(int jobsearch_num,String user_id);
	public UserVO myinfo(String user_id);
	public int pwcheck(String user_id,String user_pw);
	public void updatepw(String user_id,String user_pw);
	public void updateinfo(UserVO vo);
	public int deleteUser(String user_id);
}
