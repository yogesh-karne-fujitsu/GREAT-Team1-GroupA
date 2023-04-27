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

import com.Spring.TrainingStatusApp.dao.CourseDao;

@Repository
public class CourseDaoImpl extends JdbcDaoSupport implements CourseDao{
	
	@Autowired
	DataSource dataSource;
	
	@PostConstruct
	private void intialize() {
		System.out.println("DAOimpl-course");
		setDataSource(dataSource);
	}

	@Override
	public List<String> getAllCourseId() {
		String sql="select course_id from tblcoursedetails";
		
		return getJdbcTemplate().query(sql,new RowMapper<String>(){
			@Override
			public String mapRow(ResultSet rs,int rownum) throws SQLException{
				return rs.getString(1);
			}
		});
	}

	@Override
	public String getCourseNameById(String courseId) {
		String sql="select course_name, course_id from tblcoursedetails where course_id=? LIMIT 1";
		
		String courseName = getJdbcTemplate().queryForObject(sql, new String[]{courseId}, new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getString(1);
			}
		});
		return courseName;
	}



}
