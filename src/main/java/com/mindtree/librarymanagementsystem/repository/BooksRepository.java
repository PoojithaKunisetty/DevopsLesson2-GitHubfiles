package com.mindtree.librarymanagementsystem.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.mindtree.librarymanagementsystem.entity.Book;
import com.mindtree.librarymanagementsystem.entity.Library;

@Repository
public interface BooksRepository extends JpaRepository<Book, Integer> {
	@Query("from Library where libraryid=?1")
	Optional<Library> findLibraryByLibraryId(int libraryid);

	

}
