package com.mindtree.librarymanagementsystem.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="book")
public class Book {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="bookid")
	private int bookid;
	
	@Column(name="bname")
	private String bname;
	
	@Column(name="aname")
	private String aname;
	
	@Column(name="status")
	private String status;
	
	@ManyToOne
	private Library library;
	
	@ManyToOne
	private Student student;
	
	
	public Book()
	{
		
	}


	public Book(int bookid, String bname, String aname, String status, Library library, Student student) {
		super();
		this.bookid = bookid;
		this.bname = bname;
		this.aname = aname;
		this.status = status;
		this.library = library;
		this.student = student;
	}


	public int getBookid() {
		return bookid;
	}


	public void setBookid(int bookid) {
		this.bookid = bookid;
	}


	public String getBname() {
		return bname;
	}


	public void setBname(String bname) {
		this.bname = bname;
	}


	public String getAname() {
		return aname;
	}


	public void setAname(String aname) {
		this.aname = aname;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public Library getLibrary() {
		return library;
	}


	public void setLibrary(Library library) {
		this.library = library;
	}


	public Student getStudent() {
		return student;
	}


	public void setStudent(Student student) {
		this.student = student;
	}


	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", bname=" + bname + ", aname=" + aname + ", status=" + status + ", library="
				+ library + ", student=" + student + "]";
	}
}