package com.pjt.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjt.Mapper.resumeMapper;
import com.pjt.command.ResumeVO;

@Service
public class resumeServiceImpl implements resumeService {

	@Autowired
	resumeMapper rm;
	
	@Override
	public void addResume(ResumeVO vo) {
		
		rm.addResume(vo);
	}
	
	@Override
	public ResumeVO resumeSelect(int resume_num) {
		
		return rm.resumeSelect(resume_num);
	}
}
