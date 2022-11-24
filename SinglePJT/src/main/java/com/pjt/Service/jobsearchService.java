package com.pjt.Service;

import com.pjt.command.JobsearchVO;


public interface jobsearchService {
	public void addJobSearch(JobsearchVO vo);
	public JobsearchVO job_search_select();
	
}
