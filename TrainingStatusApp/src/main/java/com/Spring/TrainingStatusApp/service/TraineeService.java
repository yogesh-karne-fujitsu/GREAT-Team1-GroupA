package com.Spring.TrainingStatusApp.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.Spring.TrainingStatusApp.controller.bean.Trainee;


public interface TraineeService {

	int createNewTrainee(Trainee trainee,MultipartFile esrn,MultipartFile ssrn,MultipartFile tsrn) throws IOException;

	List<Trainee> getTrainees(String batNm,String empID,String subDate,String approver);
	
	int updateRecst(String eid,String cid,char st) throws IOException;

	List<Trainee> getTrainees(String empID,String subDate);
	
	List<Trainee> getTraineeMail(String empID,String mailId);


}
