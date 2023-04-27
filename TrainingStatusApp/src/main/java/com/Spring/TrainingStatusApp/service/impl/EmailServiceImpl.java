package com.Spring.TrainingStatusApp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.Spring.TrainingStatusApp.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService{
	
	@Autowired
	private JavaMailSender mailSender;

	@Override
	public String sendEmail(String toEmail, String subject, String body) {
		 try {
		SimpleMailMessage message=new SimpleMailMessage();
		message.setFrom ("space.walker0902@gmail.com");
		message.setTo(toEmail);
		message.setText (body);
		message.setSubject (subject);
		
		mailSender.send(message);
		return "Mail Sent successfully...!";
		 }
		 catch(Exception e) {
	            return "Error while Sending Mail";
		 }
	}

}
