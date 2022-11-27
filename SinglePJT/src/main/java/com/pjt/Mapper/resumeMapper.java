package com.pjt.Mapper;

import com.pjt.command.ResumeVO;

public interface resumeMapper {
	public void addResume(ResumeVO vo);
	public ResumeVO resumeSelect(int resume_num);
	public ResumeVO resumeManagement(String user_id);
	
}
