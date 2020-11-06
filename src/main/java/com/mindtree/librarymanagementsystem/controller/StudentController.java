package com.mindtree.librarymanagementsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.librarymanagementsystem.entity.Student;
import com.mindtree.librarymanagementsystem.exception.ServiceException;
import com.mindtree.librarymanagementsystem.service.LibraryManagementService;

@Controller
public class StudentController {
	@Autowired
	LibraryManagementService libservice;
	
	@RequestMapping("/addstudent")
	public String welcome1(ModelMap model)
	{
		return "Student";
	}
	
	@PostMapping("/student")
	public String addDetails(ModelMap model,Student student,int libraryid)
	{
		libservice.saveStudent(student,libraryid);
		return "Student";
		
	}
	
	
	
	@PostMapping("/issue")
	public String issuebook(ModelMap model,@RequestParam int studentid,@RequestParam int bookid)
	{
		try
	{
		libservice.issueBook(studentid,bookid);
		
	}
	catch(ServiceException e) {
		model.addAttribute("message",e.getMessage());
		
	}
		return "issue";
	}
	

	
	@GetMapping("/displaystudent")
	public String displayDetails(ModelMap model)
	{
		try
		{
		List<Student> student=libservice.displayStudent();
		model.put("students",student);
		return "displaystudent";	
		}
		catch(ServiceException e)
		{
			model.addAttribute("message",e.getMessage());
			return "displaystudent";
		}
	}

}
