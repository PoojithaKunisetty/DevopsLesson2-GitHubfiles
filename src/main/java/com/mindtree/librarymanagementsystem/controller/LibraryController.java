package com.mindtree.librarymanagementsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mindtree.librarymanagementsystem.entity.Library;
import com.mindtree.librarymanagementsystem.exception.ServiceException;
import com.mindtree.librarymanagementsystem.service.LibraryManagementService;

@Controller
public class LibraryController {
	@Autowired
	LibraryManagementService libservice;
	
	@RequestMapping("/addlibrary")
	public String welcome1(ModelMap model)
	{
		return "Library";
	}
	
	@PostMapping("/library")
	public String addLibrary(ModelMap model,Library library)
	{
		libservice.saveLibrary(library);
		return "Library";
	}

	
	@GetMapping("/displaylibrary")
	public String displayDetails(ModelMap model)
	{
		try
		{
		List<Library> library=libservice.displayLibrary();
		model.put("lib",library);
		return "displaylibrary";
		}
		catch(ServiceException e)
		{
			model.addAttribute("message",e.getMessage());
			return "displaylibrary";
		}
		
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model, String error, String logout) {
        if (error != null)
            model.addAttribute("errorMsg", "Your username and password are invalid.");

        if (logout != null)
            model.addAttribute("msg", "You have been logged out successfully.");

        return "login";
    }
	
}

