package com.Spring.TrainingStatusApp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Spring.TrainingStatusApp.dao.EmployeeDao;
import com.Spring.TrainingStatusApp.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeDao employeeDao;

	@Override
	public List<String> getAllEmployeeId() {
			return employeeDao.getAllEmployeeId();
	}

	@Override
	public String getEmployeeNameByEmployeeId(String employeeId) {
		return employeeDao.getEmployeeNameById(employeeId);
	}

	@Override
	public String getEmployeeMailByEmployeeId(String mailId) {
		return employeeDao.getEmployeeMailById(mailId);
	}

	@Override
	public String getEmployeeBatchByEmployeeId(String batch) {
		return employeeDao.getEmployeeBatchById(batch);
	}

}
