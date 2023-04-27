package com.Spring.TrainingStatusApp.controller.bean;

public class TraineeLogin {
	
	private String traineeuserId;
	private String traineepassword;
	public String getTraineeuserId() {
		return traineeuserId;
	}
	public void setTraineeuserId(String traineeuserId) {
		this.traineeuserId = traineeuserId;
	}
	public String getTraineepassword() {
		return traineepassword;
	}
	public void setTraineepassword(String traineepassword) {
		this.traineepassword = traineepassword;
	}
	@Override
	public String toString() {
		return "TraineeLogin [traineeuserId=" + traineeuserId + ", traineepassword=" + traineepassword + "]";
	}
	
}
