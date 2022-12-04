package com.pjt.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjt.Mapper.jobsearchMapper;
import com.pjt.command.AcceptVO;
import com.pjt.command.JobsearchVO;
import com.pjt.command.ResumeVO;

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
	
	@Override
	public int jobsearch_delete(int jobsearch_num) {
		
		return jm.jobsearch_delete(jobsearch_num);
	}
	
	@Override
	public int jobsearch_public(int jobsearch_num) {
		String jobsearch_check = jm.getJobsearch_check(jobsearch_num);
		if(jobsearch_check.equals("1")) {
			return jm.jobsearch_public("0",jobsearch_num);
		}else {
			return jm.jobsearch_public("1",jobsearch_num);
		}
	}
	
	@Override
	public List<ResumeVO> acceptlist(String user_id) {
		List<AcceptVO> list = jm.acceptlist(user_id);
		List<ResumeVO> resume_list = new ArrayList<ResumeVO>(); 
		for(AcceptVO mainresume : list ) {
			resume_list.add(jm.getResumenum(mainresume.getMainresume_num()));
		}
		
		return resume_list;
	}
	
	//지원한 공고 리스트 가져오기
	public List<JobsearchVO> getJobsearch(String user_id){
		
		return jm.getJobsearch(user_id);
	}
	
	//지원한 공고 지원 취소
	public int deleteAccept(int jobsearch_num) {
		return jm.deleteAccept(jobsearch_num);
	}
}
