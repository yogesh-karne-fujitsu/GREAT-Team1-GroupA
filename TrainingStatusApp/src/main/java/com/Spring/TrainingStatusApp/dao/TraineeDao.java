package com.Spring.TrainingStatusApp.dao;

import java.io.IOException;
import java.util.List;

import com.Spring.TrainingStatusApp.controller.bean.Trainee;


public interface TraineeDao {

	int createNewTrainee(Trainee trainee,String tPath,String sPath,String tsPath) throws IOException;
	
	List<Trainee> getTrainees(String bName,String emID,String sbDate,String approver);
	
	int updateRecSts(String emid,String courseId,char rStat) throws IOException;
	
	 List<Trainee> getTrainees(String emID,String sbDate);
    

}
