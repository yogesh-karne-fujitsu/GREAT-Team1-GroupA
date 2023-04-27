package com.Spring.TrainingStatusApp.controller.bean;

public class Employee {

	private String empName;
	private String empId;
	private String mailId;
	private String batch;

	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
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
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	
	@Override
	public String toString() {
		return "Employee [empName=" + empName + ", empId=" + empId + ", mailId=" + mailId + ", batch=" + batch + "]";
	}
}
