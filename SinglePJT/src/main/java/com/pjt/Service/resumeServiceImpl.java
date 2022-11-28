package com.pjt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjt.Mapper.resumeMapper;
import com.pjt.command.Picture_ImgVO;
import com.pjt.command.ResumeVO;

@Service
public class resumeServiceImpl implements resumeService {

	@Autowired
	resumeMapper rm;
	
	@Override
	public void addResume(ResumeVO vo) {
		rm.addResume(vo);
		if(vo.getImageList() == null || vo.getImageList().size() <= 0) {
			return;
		}
		for(Picture_ImgVO attach : vo.getImageList()) {
			attach.setResume_num(vo.getResume_num());
			rm.imageEnroll(attach);
		}
	}
	
	@Override
	public ResumeVO resumeSelect(int resume_num) {
		
		return rm.resumeSelect(resume_num);
	}
	
	@Override
	public List<ResumeVO> resumeManagement(String user_id) {
		
		return rm.resumeManagement(user_id);
	}
	
	@Override
	public Picture_ImgVO getPicture(int resume_num) {
		
		return rm.getPicture(resume_num);
	}
	
	@Override
	public void resume_modify(ResumeVO vo) {
		rm.resume_modify(vo);
		if(vo.getImageList() == null || vo.getImageList().size() <= 0) {
			return;
		}
		for(Picture_ImgVO attach : vo.getImageList()) {
			attach.setResume_num(vo.getResume_num());
			rm.img_modify(attach);
		}
	}
	
	@Override
	public int resume_delete(int resume_num) {
	
		return rm.resume_delete(resume_num);
	}
	
}
