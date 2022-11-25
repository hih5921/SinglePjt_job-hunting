package com.pjt.Service;

import com.pjt.command.ResumeVO;

public interface resumeService {

	public void addResume(ResumeVO vo);
	public ResumeVO resumeSelect(int resume_num);
}
