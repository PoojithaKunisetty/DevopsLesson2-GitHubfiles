package com.mindtree.librarymanagementsystem.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="library")
public class Library {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="libraryid")
	private int libraryid;
	
	@Column(name="libraryname")
	private String libraryname;
	
	@Column(name="libraryaddress")
	private String libraryaddress;
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="library")
	private Set<Book> book=new HashSet<Book>();
	@OneToMany(cascade=CascadeType.ALL,mappedBy="lib")
	private Set<Student> student=new HashSet<Student>();
	
	public Library()
	{
		
	}

	public Library(int libraryid, String libraryname, String libraryaddress, Set<Book> book, Set<Student> student) {
		super();
		this.libraryid = libraryid;
		this.libraryname = libraryname;
		this.libraryaddress = libraryaddress;
		this.book = book;
		this.student = student;
	}

	public int getLibraryid() {
		return libraryid;
	}

	public void setLibraryid(int libraryid) {
		this.libraryid = libraryid;
	}

	public String getLibraryname() {
		return libraryname;
	}

	public void setLibraryname(String libraryname) {
		this.libraryname = libraryname;
	}

	public String getLibraryaddress() {
		return libraryaddress;
	}

	public void setLibraryaddress(String libraryaddress) {
		this.libraryaddress = libraryaddress;
	}

	public Set<Book> getBook() {
		return book;
	}

	public void setBook(Set<Book> book) {
		this.book = book;
	}

	public Set<Student> getStudent() {
		return student;
	}

	public void setStudent(Set<Student> student) {
		this.student = student;
	}

	@Override
	public String toString() {
		return "Library [libraryid=" + libraryid + ", libraryname=" + libraryname + ", libraryaddress=" + libraryaddress
				+ ", book=" + book + ", student=" + student + "]";
	}

	
}
