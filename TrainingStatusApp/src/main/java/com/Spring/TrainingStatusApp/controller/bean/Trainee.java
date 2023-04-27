package com.Spring.TrainingStatusApp.controller.bean;

public class Trainee {
	private String empId;
	private String mailId;
	private String empName;
	private String batch;
	private String trainDate;
	private String srDate;
	private String enDate;
	private String courseId;
	private String courseName;
	private String apName;
	private String sImg;
	private String sbImg;
	private String tsImg;
	private String testScore;
	private String status;
	
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getTrainDate() {
		return trainDate;
	}
	public void setTrainDate(String trainDate) {
		this.trainDate = trainDate;
	}
	public String getSrDate() {
		return srDate;
	}
	public void setSrDate(String srDate) {
		this.srDate = srDate;
	}
	public String getEnDate() {
		return enDate;
	}
	public void setEnDate(String enDate) {
		this.enDate = enDate;
	}
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
	public String getApName() {
		return apName;
	}
	public void setApName(String apName) {
		this.apName = apName;
	}
	public String getsImg() {
		return sImg;
	}
	public void setsImg(String sImg) {
		this.sImg = sImg;
	}
	public String getSbImg() {
		return sbImg;
	}
	public void setSbImg(String sbImg) {
		this.sbImg = sbImg;
	}
	public String getTsImg() {
		return tsImg;
	}
	public void setTsImg(String tsImg) {
		this.tsImg = tsImg;
	}
	public String getTestScore() {
		return testScore;
	}
	public void setTestScore(String testScore) {
		this.testScore = testScore;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "TraineeDataIn [empId=" + empId + ", mailId=" + mailId + ", empName=" + empName + ", batch=" + batch
				+ ", trainDate=" + trainDate + ", srDate=" + srDate + ", enDate=" + enDate + ", courseId=" + courseId
				+ ", courseName=" + courseName + ", apName=" + apName + ", sImg=" + sImg + ", sbImg=" + sbImg
				+ ", tsImg=" + tsImg + ", testScore=" + testScore + ", status=" + status + "]";
	}

}
