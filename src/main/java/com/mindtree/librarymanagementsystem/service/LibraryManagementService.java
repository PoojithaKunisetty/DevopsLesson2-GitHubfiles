package com.mindtree.librarymanagementsystem.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.mindtree.librarymanagementsystem.entity.Book;
import com.mindtree.librarymanagementsystem.entity.Library;
import com.mindtree.librarymanagementsystem.entity.Student;
import com.mindtree.librarymanagementsystem.exception.ServiceException;

@Service
public interface LibraryManagementService {
	
	public void saveLibrary(Library library);
	public void saveBook(Book book,int libraryid);
	public List<Student> displayStudent()throws ServiceException;
	public List<Library> displayLibrary()throws ServiceException;
	public List<Book> displayBook()throws ServiceException;
	public void saveStudent(Student student,int libraryid);
	public String issueBook(int studentid, int bookid)throws ServiceException;
	public String returnBook(int studentid,int bookid);

}
