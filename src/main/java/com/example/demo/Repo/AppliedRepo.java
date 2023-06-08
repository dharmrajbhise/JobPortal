package com.example.demo.Repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Applied;

@Repository
public interface AppliedRepo extends JpaRepository<Applied, Long> {

	List<Applied> findByUsername(String username);

}
