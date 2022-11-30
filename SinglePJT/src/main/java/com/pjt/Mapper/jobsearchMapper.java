package com.pjt.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pjt.command.JobsearchVO;

public interface jobsearchMapper {
	public void addJobSearch(JobsearchVO vo);
	public JobsearchVO job_search_select(int jobsearch_num);
	public List<JobsearchVO> job_search_management(String user_id);
	public void modifyJobSearch(JobsearchVO vo); 	
}
