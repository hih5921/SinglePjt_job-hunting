package com.pjt.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pjt.command.JobsearchVO;
import com.pjt.command.ResumeVO;
import com.pjt.command.UserVO;

@Mapper
public interface mainMapper {
	public void addUser(UserVO vo);
	public int checkID(String user_id);
	public int login(UserVO vo);
	public List<JobsearchVO> jobsearch_list();
	public List<ResumeVO> resume_list();
}
