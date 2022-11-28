package com.pjt.command;

import java.util.List;

import lombok.Data;

@Data
public class ResumeVO {
	private int resume_num;
	private String resume_title;
	private String resume_info;
	private String user_id;
	
	private List<Picture_ImgVO> imageList;
}
