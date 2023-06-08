package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Jobs;

@Repository
public interface JobsRepo extends JpaRepository<Jobs, Long> {
	
	@Query("select MAX(j.id) FROM Jobs j")
	Long findMaxId();
	
	List<Jobs> findByType(String type);

}
