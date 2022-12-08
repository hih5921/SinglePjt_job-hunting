package com.pjt.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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
	public String getid(int jobsearch_num);
	public int getresume(String user_id);
	public int accept(@Param("user_id")String user_id, @Param("mainresume_num")int mainresume_num,@Param("jobsearch_num")int jobsearch_num);
	public int acceptcheck(@Param("user_id")String user_id, @Param("mainresume_num")int mainresume_num);
	public UserVO myinfo(String user_id);
	public int pwcheck(@Param("user_id") String user_id,@Param("user_pw") String user_pw);
	public void updatepw(@Param("user_id") String user_id,@Param("user_pw") String user_pw);
	public void updateinfo(UserVO vo);
	public int deleteUser(String user_id);
}
