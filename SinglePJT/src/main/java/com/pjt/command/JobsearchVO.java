package com.pjt.command;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import lombok.Data;

@Data
public class JobsearchVO extends BaseTypeHandler<Object>{
	private int jobsearch_num;
	private String jobsearch_title;
	private Map<String, Object> jobsearch_main;
	
	@Override
	public Object getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Object getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Object getNullableResult(ResultSet rs, String columnName) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void setNonNullParameter(PreparedStatement ps, int i, Object parameter, JdbcType jdbcType)
			throws SQLException {
		// TODO Auto-generated method stub
		
	}
	
}
