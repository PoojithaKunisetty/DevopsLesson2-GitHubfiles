package com.mindtree.librarymanagementsystem.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="student")
public class Student {
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="studentid")
	private int studentid;
	
	@Column(name="studentname")
	private String studentname;
	
	@Column(name="studentaddress")
	private String studentaddress;
	
	@ManyToOne
	private Library lib;
	
	
	public Student()
	{
		
	}

	public Student(int studentid, String studentname, String studentaddress, Library lib) {
		super();
		this.studentid = studentid;
		this.studentname = studentname;
		this.studentaddress = studentaddress;
		this.lib = lib;
		
	}

	public int getStudentid() {
		return studentid;
	}

	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getStudentaddress() {
		return studentaddress;
	}

	public void setStudentaddress(String studentaddress) {
		this.studentaddress = studentaddress;
	}

	public Library getLib() {
		return lib;
	}

	public void setLib(Library lib) {
		this.lib = lib;
	}

	
	@Override
	public String toString() {
		return "Student [studentid=" + studentid + ", studentname=" + studentname + ", studentaddress=" + studentaddress
				+ ", lib=" + lib + "]";
	}
}
