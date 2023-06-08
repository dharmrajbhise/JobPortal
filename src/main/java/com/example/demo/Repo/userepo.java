package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.user;

@Repository
public interface userepo extends JpaRepository<user, Long> {

	user findByUsername(String username);

}
