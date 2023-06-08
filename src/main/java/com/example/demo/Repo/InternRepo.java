package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Internships;

@Repository
public interface InternRepo extends JpaRepository<Internships, Long> {
	
	@Query("select MAX(i.id) FROM Internships i")
	Long findMaxId();

	List<Internships> findByType(String type);

}
