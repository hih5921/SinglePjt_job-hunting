package com.pjt.Mapper;

import java.util.List;

import com.pjt.command.MainResumeVO;
import com.pjt.command.Picture_ImgVO;
import com.pjt.command.ResumeVO;

public interface resumeMapper {
	public void addResume(ResumeVO vo);
	public ResumeVO resumeSelect(int resume_num);
	public List<ResumeVO> resumeManagement(String user_id);
	public void imageEnroll(Picture_ImgVO vo);
	public Picture_ImgVO getPicture(int resume_num);
	public void resume_modify(ResumeVO vo);
	public void img_modify(Picture_ImgVO vo);
	public int resume_delete(int resume_num);
	public void imgAdd(Picture_ImgVO vo);
	public int mainresume_add(MainResumeVO vo);
	public int mainresume_update(MainResumeVO vo);
	public MainResumeVO getMainResume(MainResumeVO vo);
	public List<Picture_ImgVO> getPicture_all();
}
