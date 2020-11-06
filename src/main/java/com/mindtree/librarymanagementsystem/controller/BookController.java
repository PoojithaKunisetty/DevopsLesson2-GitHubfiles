package com.mindtree.librarymanagementsystem.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.librarymanagementsystem.entity.Book;
import com.mindtree.librarymanagementsystem.exception.ServiceException;
import com.mindtree.librarymanagementsystem.service.LibraryManagementService;

@Controller
public class BookController {
	@Autowired
	LibraryManagementService libservice;
	
	@RequestMapping("/")
	public String welcome(ModelMap model)
	{
		return "welcome";
	}
	
	@RequestMapping("/issue")
	public String issue(ModelMap model)
	{
		return "issue";
	}
	
	@RequestMapping("/returnbook")
	public String returnBook(ModelMap model)
	{
		return "return";
	}

	@RequestMapping("/addbook")
	public String welcome1(ModelMap model)
	{
		return "Book";
	}
	

	@PostMapping("/book")
	public String addLibrary(ModelMap model,Book book,int libraryid)
	{
		libservice.saveBook(book, libraryid);
		
		return "Book";
	}
	
	
	@PostMapping("/return")
	public String returnBook(ModelMap model,@RequestParam int studentid,@RequestParam int bookid)
	{
		libservice.returnBook(studentid, bookid);
		return "return";
	}
	
	@GetMapping("/displaybook")
	public String displayDetails(ModelMap model)
	{
		try
		{
		List<Book> books=libservice.displayBook();
		model.put("book",books);
		return "displaybook";
		}
		catch(ServiceException e)
		{
			model.addAttribute("message",e.getMessage());
			return "displaybook";
		}
		
	}
	
	@GetMapping("/back")
	public String back(ModelMap model)
	{
		return "welcome";
	}


}
