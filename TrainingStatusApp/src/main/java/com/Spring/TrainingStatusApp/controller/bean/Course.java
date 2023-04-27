package com.Spring.TrainingStatusApp.controller.bean;

public class Course {

	private String courseId;
	private String courseName;
	private String trdate;

	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getTrdate() {
		return trdate;
	}
	public void setTrdate(String trdate) {
		this.trdate = trdate;
	}
	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", trdate=" + trdate + "]";
	}


}
