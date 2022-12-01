package com.pjt.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pjt.command.JobsearchVO;

public interface jobsearchMapper {
	public void addJobSearch(JobsearchVO vo);
	public JobsearchVO job_search_select(int jobsearch_num);
	public List<JobsearchVO> job_search_management(String user_id);
	public void modifyJobSearch(JobsearchVO vo); 
	public int jobsearch_delete(int jobsearch_num);
	public int jobsearch_public(@Param("jobsearch_check")String jobsearch_check, @Param("jobsearch_num") int jobsearch_num);
	public String getJobsearch_check( int jobsearch_num);
}
