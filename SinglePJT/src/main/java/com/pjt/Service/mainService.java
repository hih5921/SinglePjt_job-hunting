package com.pjt.Service;

import com.pjt.command.UserVO;

public interface mainService {
	public void addUser(UserVO vo);
	public int checkID(String user_id);
	public int login(UserVO vo);
	
}
