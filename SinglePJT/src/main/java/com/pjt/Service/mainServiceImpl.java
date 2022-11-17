package com.pjt.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjt.Mapper.mainMapper;
import com.pjt.command.UserVO;

@Service
public class mainServiceImpl implements mainService{
	
	@Autowired
	mainMapper mm;
	
	@Override
	public void addUser(UserVO vo) {
		mm.addUser(vo);
	}
	
	@Override
	public int checkID(String user_id) {
		
		return mm.checkID(user_id);
	}
}
