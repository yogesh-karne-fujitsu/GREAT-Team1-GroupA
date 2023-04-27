package com.Spring.TrainingStatusApp.dao;

import java.util.List;

public interface CourseDao {
	
	List<String> getAllCourseId();

	String getCourseNameById( String courseId);


}
