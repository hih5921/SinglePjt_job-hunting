package com.pjt.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.pjt.command.UserVO;

@Mapper
public interface mainMapper {
	public void addUser(UserVO vo);
	public int checkID(String user_id);
}
