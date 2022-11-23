package com.pjt.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.pjt.command.JobsearchVO;

public interface jobsearchMapper {
	public void addJobSearch(JobsearchVO vo);
}
