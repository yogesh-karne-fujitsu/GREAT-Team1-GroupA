package com.Spring.TrainingStatusApp.controller.bean;

public class AdminLogin {
	private String adminuserId;
	private String adminpassword;
	
	public String getAdminuserId() {
		return adminuserId;
	}
	public void setAdminuserId(String adminuserId) {
		this.adminuserId = adminuserId;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	@Override
	public String toString() {
		return "AdminLogin [adminuserId=" + adminuserId + ", adminpassword=" + adminpassword + "]";
	}

}
