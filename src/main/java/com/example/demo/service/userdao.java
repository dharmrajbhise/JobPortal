package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Repo.AppliedRepo;
import com.example.demo.Repo.JobsRepo;
import com.example.demo.entity.Applied;
import com.example.demo.entity.Jobs;

@Service
public class userdao implements userservice {
	
	@Autowired
	private JobsRepo repo2;
	
	@Autowired
	private AppliedRepo repo;


	@Override
	public String processData() {
		String message = "Registration Successfull!";
		return message;
	}
	
	public void applyForJob(long id, String username) {
	    Jobs job = repo2.findById(id).orElse(null);
	    if (job != null) {
	      Applied appliedJob = new Applied(job, username);
	      repo.save(appliedJob);
	    }
	

	}
}
