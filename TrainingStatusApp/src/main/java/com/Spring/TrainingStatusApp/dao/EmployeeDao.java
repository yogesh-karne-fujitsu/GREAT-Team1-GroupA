package com.Spring.TrainingStatusApp.dao;

import java.util.List;

public interface EmployeeDao {
	
	List<String> getAllEmployeeId();

	String getEmployeeNameById( String employeeId);

	String getEmployeeMailById( String mailId);
	
	String getEmployeeBatchById( String batch);
}
