package com.Spring.TrainingStatusApp.service;

public interface EmailService {

	String sendEmail(String toEmail,String subject,String body);
}
