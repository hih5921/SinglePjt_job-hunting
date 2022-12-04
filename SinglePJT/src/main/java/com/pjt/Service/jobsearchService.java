package com.pjt.Service;

import java.util.List;

import com.pjt.command.AcceptVO;
import com.pjt.command.JobsearchVO;
import com.pjt.command.ResumeVO;


public interface jobsearchService {
	public void addJobSearch(JobsearchVO vo);
	public JobsearchVO job_search_select(int jobsearch_num);
	public List<JobsearchVO> job_search_management(String user_id);
	public void modifyJobSearch(JobsearchVO vo); 	
	public int jobsearch_delete(int jobsearch_num);
	public int jobsearch_public(int jobsearch_num);
	public List<ResumeVO> acceptlist(String user_id);
	public List<JobsearchVO> getJobsearch(String user_id);
	public int deleteAccept(int jobsearch_num);
	
}
