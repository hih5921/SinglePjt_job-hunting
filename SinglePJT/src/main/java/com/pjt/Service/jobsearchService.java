package com.pjt.Service;

import java.util.List;

import com.pjt.command.JobsearchVO;


public interface jobsearchService {
	public void addJobSearch(JobsearchVO vo);
	public JobsearchVO job_search_select(int jobsearch_num);
	public List<JobsearchVO> job_search_management(String user_id);
	public void modifyJobSearch(JobsearchVO vo); 		
	
}
