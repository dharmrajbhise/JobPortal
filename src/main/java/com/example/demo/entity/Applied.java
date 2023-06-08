package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Applied {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@ManyToOne
	@JoinColumn(name = "Job_id")
	private Jobs Jobs;
	
	private String username;
	
	public Applied() {}

	public Applied(com.example.demo.entity.Jobs jobs, String username) {
		super();
		Jobs = jobs;
		this.username = username;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Jobs getJobs() {
		return Jobs;
	}

	public void setJobs(Jobs jobs) {
		Jobs = jobs;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Applied [id=" + id + ", Jobs=" + Jobs + ", username=" + username + "]";
	}
	
	

	
}
