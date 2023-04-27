package com.Spring.TrainingStatusApp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.Spring.TrainingStatusApp.dao.EmployeeDao;

@Repository
public class EmployeeDaoImpl extends JdbcDaoSupport implements EmployeeDao {

	@Autowired
	DataSource dataSource;
	
	@PostConstruct
	private void intialize() {
		System.out.println("DAOimpl-employee");
		setDataSource(dataSource);
	}
	
	
	@Override
	public List<String> getAllEmployeeId() {
		String sql="select emp_id from tblemployees";
		
		return getJdbcTemplate().query(sql,new RowMapper<String>(){
			@Override
			public String mapRow(ResultSet rs,int rownum) throws SQLException{
				return rs.getString(1);
			}
		});
	}

	@Override
	public String getEmployeeNameById(String employeeId) {
		String sql="select emp_name, emp_id from tblemployees where emp_id=? LIMIT 1";
		
		String employeeName = getJdbcTemplate().queryForObject(sql, new String[]{employeeId}, new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getString(1);
			}
		});
		return employeeName;
	}


	@Override
	public String getEmployeeMailById(String mailId) {
		String sql="select emp_mail, emp_id from tblemployees where emp_id=? LIMIT 1";
		
		String employeeMail = getJdbcTemplate().queryForObject(sql, new String[]{mailId}, new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getString(1);
			}
		});
		return employeeMail;
	}


	@Override
	public String getEmployeeBatchById(String batch) {
		String sql="select emp_batch, emp_id from tblemployees where emp_id=? LIMIT 1";
		
		String employeeBatch = getJdbcTemplate().queryForObject(sql, new String[]{batch}, new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getString(1);
			}
		});
		return employeeBatch;
	}
	

}
