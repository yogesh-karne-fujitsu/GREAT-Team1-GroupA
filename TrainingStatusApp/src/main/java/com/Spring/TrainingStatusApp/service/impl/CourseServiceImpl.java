package com.Spring.TrainingStatusApp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Spring.TrainingStatusApp.dao.CourseDao;
import com.Spring.TrainingStatusApp.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	CourseDao courseDao;
	
	@Override
	public List<String> getAllCourseId() {
		return courseDao.getAllCourseId();
	}

	@Override
	public String getCourseNameByCourseId( String courseId) {
		return courseDao.getCourseNameById(courseId);
	}

}
