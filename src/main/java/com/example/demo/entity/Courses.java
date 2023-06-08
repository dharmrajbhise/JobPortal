package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Courses {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String title;
	
	private String company;
	
	private String type;
	
	private String mode;
	
	@Column(columnDefinition = "TEXT")
	private String description;
	
	private String availability;
	
	@Column(columnDefinition = "TEXT")
	private String applyLink;
	
	public Courses() {}

	public Courses( String title, String company, String type, String mode, String description,
			String availability,String applyLink) {
		super();
		this.title = title;
		this.company = company;
		this.type = type;
		this.mode = mode;
		this.description = description;
		this.availability = availability;
		this.applyLink = applyLink;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getApplyLink() {
		return applyLink;
	}

	public void setApplyLink(String applyLink) {
		this.applyLink = applyLink;
	}

	@Override
	public String toString() {
		return "Courses [id=" + id + ", title=" + title + ", company=" + company + ", type=" + type + ", mode=" + mode
				+ ", description=" + description + ", availability=" + availability + ", applyLink=" + applyLink + "]";
	}

	
	

}
