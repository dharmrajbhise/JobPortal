package com.example.demo.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Jobs {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String title;
	
	private String company;
	
	private String type;
	
	private String location;
	
	@Column(columnDefinition = "TEXT")
	private String description;
	
	@Column(columnDefinition = "TEXT")
	private String requirements;
	
	private BigDecimal salary;
	
    private String postedDate;
    
    private String applyLink;
	
	public Jobs() {}

	public Jobs(String title, String company, String type, String location, String description, String requirements,
			BigDecimal salary,String postedDate,String applyLink) {
		super();
		this.title = title;
		this.company = company;
		this.type = type;
		this.location = location;
		this.description = description;
		this.requirements = requirements;
		this.salary = salary;
		this.postedDate = postedDate;
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

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRequirements() {
		return requirements;
	}

	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}

	public BigDecimal getSalary() {
		return salary;
	}

	public void setSalary(BigDecimal salary) {
		this.salary = salary;
	}

	public String getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(String postedDate) {
		this.postedDate = postedDate;
	}

	public String getApplyLink() {
		return applyLink;
	}

	public void setApplyLink(String applyLink) {
		this.applyLink = applyLink;
	}

	@Override
	public String toString() {
		return "Jobs [id=" + id + ", title=" + title + ", company=" + company + ", type=" + type + ", location="
				+ location + ", description=" + description + ", requirements=" + requirements + ", salary=" + salary
				+ ", postedDate=" + postedDate + ", applyLink=" + applyLink + "]";
	}


}
