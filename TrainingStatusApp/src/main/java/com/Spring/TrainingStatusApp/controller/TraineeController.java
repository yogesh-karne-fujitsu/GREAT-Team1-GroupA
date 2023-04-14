package com.Spring.TrainingStatusApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class TraineeController 
{
	
	@RequestMapping(value = "/admin",method = RequestMethod.GET)
	public String traineepage() {
		return "admin";
		}

}
