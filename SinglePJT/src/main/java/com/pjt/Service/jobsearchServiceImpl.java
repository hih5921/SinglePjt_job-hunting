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
		
		if(vo.getJobsearch_main().getBytes().length>3500 & vo.getJobsearch_main().getBytes().length<7000) {
			String subString =vo.getJobsearch_main();
			vo.setJobsearch_main(subString.substring(0, 1300));
			vo.setJobsearch_main2(subString.substring(1301, subString.length()));
		}else if(vo.getJobsearch_main().getBytes().length>7000 ) {
			String subString =vo.getJobsearch_main();
			vo.setJobsearch_main(subString.substring(0, 1300));
			vo.setJobsearch_main2(subString.substring(1301, 2600));
			vo.setJobsearch_main3(subString.substring(2601, subString.length()));
		}
		jm.addJobSearch(vo);		
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
		System.out.println(vo.getJobsearch_main().getBytes().length);
		if(vo.getJobsearch_main().getBytes().length>3500 & vo.getJobsearch_main().getBytes().length<7000) {
			String subString =vo.getJobsearch_main();
			vo.setJobsearch_main(subString.substring(0, 2000));
			vo.setJobsearch_main2(subString.substring(2001, subString.length()));
		}else if(vo.getJobsearch_main().getBytes().length>7000 ) {
			String subString =vo.getJobsearch_main();
			vo.setJobsearch_main(subString.substring(0, 2000));
			vo.setJobsearch_main2(subString.substring(2001, 4000));
			vo.setJobsearch_main3(subString.substring(4001, subString.length()));
			System.out.println(vo.getJobsearch_main().getBytes().length);
			System.out.println(vo.getJobsearch_main2().getBytes().length);
			System.out.println(vo.getJobsearch_main3().getBytes().length);
			
		}
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
