package com.mindtree.librarymanagementsystem.service.impl;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.mindtree.librarymanagementsystem.entity.Book;
import com.mindtree.librarymanagementsystem.entity.Library;
import com.mindtree.librarymanagementsystem.entity.Student;
import com.mindtree.librarymanagementsystem.exception.BookNotAvaliableException;
import com.mindtree.librarymanagementsystem.exception.ListNotFoundException;
import com.mindtree.librarymanagementsystem.exception.ServiceException;
import com.mindtree.librarymanagementsystem.repository.BooksRepository;
import com.mindtree.librarymanagementsystem.repository.LibraryRepository;
import com.mindtree.librarymanagementsystem.repository.StudentRepository;
import com.mindtree.librarymanagementsystem.service.LibraryManagementService;

@Service
public class LibraryManagementServiceImpl implements LibraryManagementService {
	@Autowired
	BooksRepository booksrepository;
	@Autowired
	LibraryRepository libraryrepository;
	@Autowired
	StudentRepository studentrepository;

	public void saveLibrary(Library library) {
		libraryrepository.save(library);
	}

	public void saveStudent(Student student, int libraryid) {
		Optional<Library> lib = booksrepository.findLibraryByLibraryId(libraryid);
		Library library = lib.get();
		student.setLib(library);
		studentrepository.save(student);

	}

	public void saveBook(Book book, int libraryid) {
		Optional<Library> lib = booksrepository.findLibraryByLibraryId(libraryid);
		Library library = lib.get();
		book.setLibrary(library);
		book.setStatus("avaliable");
		booksrepository.save(book);
	}

	public List<Student> displayStudent() throws ServiceException {
		try {
			List<Student> student = studentrepository.findAll();
			if (student.isEmpty()) {
				throw new ListNotFoundException("list is empty!!");
			}
			return student;
		} catch (ListNotFoundException e) {
			throw new ServiceException(e.getMessage());
		}

	}

	public List<Library> displayLibrary() throws ServiceException {

		try {
			List<Library> library = libraryrepository.findAll();
			if (library.isEmpty()) {
				throw new ListNotFoundException("list is empty!!");
			}
			return library;

		} catch (ListNotFoundException e) {
			throw new ServiceException(e.getMessage());
		}
	}

	public List<Book> displayBook() throws ServiceException {
		try {
			List<Book> book = booksrepository.findAll();
			if (book.isEmpty()) {
				throw new ListNotFoundException("list is empty!!");
			}
			return book;
		} catch (ListNotFoundException e) {
			throw new ServiceException(e.getMessage());
		}
	}

	public String issueBook(int studentid, int bookid) throws ServiceException {
		try {
			List<Book> booklist=booksrepository.findAll();
			for(Book b:booklist)
			{
				if(b.getBookid()==bookid)
				{
			Optional<Book> book = booksrepository.findById(bookid);
			Book books = book.get();
			if (books.getStatus().equals("avaliable")) {
				Optional<Student> student = studentrepository.findById(studentid);
				Student students = student.get();
				books.setStudent(students);
				books.setStatus("unavaliable");
				booksrepository.save(books);
				return "success";
			}
				}
			}			
				throw new BookNotAvaliableException("Book u are requested is not available currently");
			}
			
		 catch (BookNotAvaliableException e) {
			throw new ServiceException(e.getMessage());
		}
	}

	public String returnBook(int studentid, int bookid) {
		Optional<Book> book = booksrepository.findById(bookid);
		Book books = book.get();
		if (books.getStatus().equals("unavaliable")) {
			Optional<Student> student = studentrepository.findById(studentid);
			Student students = student.get();
			books.setStudent(students);
			books.setStatus("avaliable");
			booksrepository.save(books);

		}
		return "success";
	}

}