package com.Spring.TrainingStatusApp.service;

import java.util.List;

public interface EmployeeService {
	List<String> getAllEmployeeId();

	String getEmployeeNameByEmployeeId(String employeeId);
	
	String getEmployeeMailByEmployeeId(String mailId);
	
	String getEmployeeBatchByEmployeeId(String batch);
}
