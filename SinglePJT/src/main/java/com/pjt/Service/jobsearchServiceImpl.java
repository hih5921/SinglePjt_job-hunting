package com.pjt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjt.Mapper.jobsearchMapper;
import com.pjt.command.JobsearchVO;

@Service
public class jobsearchServiceImpl implements jobsearchService {

	@Autowired
	jobsearchMapper jm;
	
	@Override
	public void addJobSearch(JobsearchVO vo) {
		System.out.println("서비스 실행"+vo);
		jm.addJobSearch(vo);
		System.out.println("서비스 완료");
		
	}
	
	@Override
	public JobsearchVO job_search_select(int jobsearch_num) {
		
		return jm.job_search_select(jobsearch_num);
	}
	
	@Override
	public List<JobsearchVO> job_search_management(String user_id) {
		
		return jm.job_search_management(user_id);
	}
	
	@Override
	public void modifyJobSearch(JobsearchVO vo) {
		
		jm.modifyJobSearch(vo);
	}
}
