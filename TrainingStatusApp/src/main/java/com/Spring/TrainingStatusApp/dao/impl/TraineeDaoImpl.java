package com.Spring.TrainingStatusApp.dao.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.Spring.TrainingStatusApp.controller.bean.Trainee;
import com.Spring.TrainingStatusApp.dao.TraineeDao;





@Repository
public class TraineeDaoImpl extends JdbcDaoSupport implements TraineeDao {


	@Autowired
	DataSource dataSource;
	
	@PostConstruct
	private void intialize() {
		System.out.println("DAOimpl-traineee");
		setDataSource(dataSource);
	}
	
	@Override
	public int createNewTrainee(Trainee trainee, String tPath, String sPath, String tsPath)throws IOException {
	String sql="insert into tblmaster(emp_id,emp_mail,emp_name,emp_batch,tr_date,st_date,ed_date,"
			+ "course_id,course_name,approver_name,mail_srn,saba_srn,test_srn,test_score,rec_status) "
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,'U');";
	
	System.out.println("DAO Handling image1");
	
	return getJdbcTemplate().update(new PreparedStatementCreator() {
		
		@Override
		public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, trainee.getEmpId());
			ps.setString(2, trainee.getMailId());
			ps.setString(3, trainee.getEmpName());
			ps.setString(4, trainee.getBatch());
			ps.setString(5, trainee.getTrainDate());
			ps.setString(6, trainee.getSrDate());
			ps.setString(7, trainee.getEnDate());
			ps.setString(8, trainee.getCourseId());
			ps.setString(9, trainee.getCourseName());
			ps.setString(10, trainee.getApName());
			ps.setString(11, tPath);
			ps.setString(12, sPath);
			ps.setString(13, tsPath);
			ps.setString(14, trainee.getTestScore());
			return ps;
		}
	});
}

	@Override
	public List<Trainee> getTrainees(String bName, String emID, String sbDate, String approver) {
		String sql="select * from tblmaster where rec_status='U' and ";
		
		if(sbDate != null)
		{
			sql+=" tr_date='"+sbDate+"'";
		}

		if(bName != null && bName.trim().length() != 0)
		{
			sql+=" and emp_batch='"+bName+"'";
		}

		if(emID != null && emID.trim().length() != 0)
		{
			sql+=" and emp_id='"+emID+"'";
				
		}
		if(approver != null && approver.trim().length() != 0)
		{
			sql+=" and approver_name='"+approver+"'";
		}
		System.out.println("SQL QUERY -->"+sql);
		
		return getJdbcTemplate().query(sql,new RowMapper<Trainee>(){
			@Override
			public Trainee mapRow(ResultSet rs,int rownum) throws SQLException{
				Trainee trainee=new Trainee();
				System.out.println("Inside return");

				trainee.setEmpName(rs.getString(2));
				trainee.setMailId(rs.getString(3));
				trainee.setEmpId(rs.getString(4));				
				trainee.setBatch(rs.getString(5));
				trainee.setApName(rs.getString(6));
				trainee.setCourseId(rs.getString(7));
				trainee.setCourseName(rs.getString(8));
				trainee.setSrDate(rs.getString(9));
				trainee.setEnDate(rs.getString(10));
				trainee.setTrainDate(rs.getString(11));
				trainee.setsImg(rs.getString(12));
				trainee.setSbImg(rs.getString(13));
				trainee.setTsImg(rs.getString(14));
				trainee.setTestScore(rs.getString(15));
				trainee.setStatus(rs.getString(16));
				
				System.out.println("DAO RETURN - "+trainee);

				return trainee;
			}
			
		});

	}

	@Override
	public int updateRecSts(String emid, String courseId, char rStat) throws IOException {
		String sql="update tblmaster set rec_status='"+rStat+"' where emp_id='"+emid+
				"' and course_id='"+courseId+"'";

		System.out.println("Update Statement "+sql);

		
		return getJdbcTemplate().update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement ps=con.prepareStatement(sql);
				return ps;
			}
		});
	}

	@Override
	public List<Trainee> getTrainees(String emID, String sbDate) {
		String sql="select * from tblmaster where (rec_status='R' or rec_status='U') and ";
		if(sbDate != null)
		{
			sql+=" tr_date='"+sbDate+"'";
		}
		if(emID != null && emID.trim().length() != 0)
		{
			sql+=" and emp_id='"+emID+"'";
				
		}
		System.out.println("SQL QUERY -->"+sql);
		return getJdbcTemplate().query(sql,new RowMapper<Trainee>(){
			@Override
			public Trainee mapRow(ResultSet rs,int rownum) throws SQLException{
				Trainee trainee=new Trainee();
				System.out.println("Inside return");
				trainee.setEmpName(rs.getString(2));
				trainee.setMailId(rs.getString(3));
				trainee.setEmpId(rs.getString(4));				
				trainee.setBatch(rs.getString(5));
				trainee.setApName(rs.getString(6));
				trainee.setCourseId(rs.getString(7));
				trainee.setCourseName(rs.getString(8));
				trainee.setSrDate(rs.getString(9));
				trainee.setEnDate(rs.getString(10));
				trainee.setTrainDate(rs.getString(11));
				trainee.setsImg(rs.getString(12));
				trainee.setSbImg(rs.getString(13));
				trainee.setTsImg(rs.getString(14));
				trainee.setTestScore(rs.getString(15));
				trainee.setStatus(rs.getString(16));
				
				
				System.out.println("DAO RETURN - "+trainee);

				return trainee;
			}
		});
		
	}}
		