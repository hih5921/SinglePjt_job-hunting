package com.pjt.command;

import lombok.Data;

@Data
public class Picture_ImgVO {
	private String img_uploadPath;
	private String img_uuid;
	private String img_fileName;
	private int user_id;
}
