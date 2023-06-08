package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Courses;

@Repository
public interface CourseRepo extends JpaRepository<Courses, Long> {
	
	@Query("select MAX(c.id) FROM Courses c")
	Long findMaxId();

	List<Courses> findByType(String type);

}
