package com.Spring.TrainingStatusApp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Spring.TrainingStatusApp.controller.bean.AdminLogin;
import com.Spring.TrainingStatusApp.controller.bean.Trainee;
import com.Spring.TrainingStatusApp.service.CourseService;
import com.Spring.TrainingStatusApp.service.TraineeService;


@Controller
public class AdminController {
	@Autowired
	TraineeService traineeService;
	
	@Autowired
	CourseService courseService;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "/Adminlogin", method = RequestMethod.POST)
	public String login(@ModelAttribute("adminlogin") AdminLogin adminlogin, ModelMap model) 
	{
	String query="SELECT * FROM tbllogin WHERE u_name=? AND u_pass=?";
	List<AdminLogin> adminlogins=jdbcTemplate.query(query, new Object[] {adminlogin.getAdminuserId(),adminlogin.getAdminpassword()},new BeanPropertyRowMapper<>(AdminLogin.class));

    if (!adminlogins.isEmpty()) {
	System.out.println("Accessed admin login page successfully");
	return "adminfilter";
	} else {
    model.put("errorMsg","Please Provide correct crendentials");
	System.out.println("invalid credentials proceeding back to login page");
	return "login";
	
		}
   	
	}
	
	@RequestMapping(value = "/response", method = RequestMethod.POST)
		public String adminUser(HttpServletRequest req, ModelMap model) throws IOException {

		String approver = req.getParameter("approver");
		String batName = req.getParameter("batName");
		String empID = req.getParameter("empID");
		String subDate = req.getParameter("subDate");
		
		System.out.println("in response page");
		List<Trainee> traineesList = traineeService.getTrainees(batName, empID, subDate, approver);
		
		System.out.println("List- " + traineesList);
		model.put("usersList", traineesList);
		model.put("verifyname", approver);
		model.put("verDate", subDate);
		model.put("empBatch", batName);
		model.put("empId", empID);

		// model.put("successMsg","Return from response page");
		return "traineerecords";
	}
	@RequestMapping(value = "/approve", method = RequestMethod.POST)
	public String traineePage(HttpServletRequest req, ModelMap model) throws IOException {

		String approver = req.getParameter("approver");
		String emId = req.getParameter("emId");
		String emBat = req.getParameter("emBatch");
		String verDate = req.getParameter("verDt");

		String empId = req.getParameter("empId");
		String csId = req.getParameter("csId");
		String status = req.getParameter("status");
		System.out.println("in approve page");
		System.out.println("Employee Id -->" + empId);
		System.out.println("Course Id -->" + csId);
		System.out.println("Rec status-->" + status);
		System.out.println("Rec status-->" + status.charAt(0));
		System.out.println("Verify DATE-->" + verDate);
		System.out.println("Batch Name-->" + emBat);

		traineeService.updateRecst(empId, csId, status.charAt(0));

		List<Trainee> traineesList = traineeService.getTrainees(emBat, emId, verDate, approver);

		model.put("usersList", traineesList);
		model.put("verifyname", approver);
		model.put("verDate", verDate);
		model.put("empBatch", emBat);
		model.put("empId", emId);
		System.out.println("Tot size -> " + traineesList.size());

		if (traineesList.size() == 0) {
			model.put("errorMsg", "No record available");
		}

		return "traineerecords";
	}
    @RequestMapping(value = "/Mail", method = RequestMethod.GET)
    public String mailPage() {
    	System.out.println("in mail");
    	return "sendMail";
    	
    }
    @RequestMapping(value = "/Mail", method = RequestMethod.POST)
    public String submitmail(HttpServletRequest request) {
    	
    	System.out.println("in mail");
    	String mailId = request.getParameter("mailId");
		String description = request.getParameter("description");
		
		SimpleMailMessage message=new SimpleMailMessage();
		message.setFrom ("learningupdate123gmail.com");
		message.setTo(mailId);
		message.setText (description);
		message.setSubject ("Training Status App");
		
		mailSender.send(message);
		
		return "message";
    	
    }
	
	
	@RequestMapping(value = "/logoutToAdmin", method = RequestMethod.GET)
	public String adminpage1() {
		System.out.println("logged out from admin page");
		return "login";
	}
	@RequestMapping(value = "/Back", method = RequestMethod.GET)
	public String backpage() {
		System.out.println("Controller4");
		return "adminfilter";
	}
}
