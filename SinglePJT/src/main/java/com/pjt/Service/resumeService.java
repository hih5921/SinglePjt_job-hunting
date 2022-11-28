package com.pjt.Service;

import java.util.List;

import com.pjt.command.Picture_ImgVO;
import com.pjt.command.ResumeVO;

public interface resumeService {

	public void addResume(ResumeVO vo);
	public ResumeVO resumeSelect(int resume_num);
	public List<ResumeVO> resumeManagement(String user_id);
	public Picture_ImgVO getPicture(int resume_num);
	public void resume_modify(ResumeVO vo);
	public int resume_delete(int resume_num);
	
	
}
