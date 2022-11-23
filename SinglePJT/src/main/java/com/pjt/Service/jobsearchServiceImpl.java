package com.pjt.Service;

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
}
