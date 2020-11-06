package com.mindtree.librarymanagementsystem.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.mindtree.librarymanagementsystem.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>{
	@Query("from Student where studentid=?1")
	Optional<Student> findByStudentId(int studentid);

}
