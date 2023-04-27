package com.Spring.TrainingStatusApp.service;

import java.util.List;

public interface CourseService {
	List<String> getAllCourseId();

	String getCourseNameByCourseId(String courseId);

	

}
