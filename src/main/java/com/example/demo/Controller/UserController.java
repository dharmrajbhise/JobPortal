package com.example.demo.Controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Repo.AppliedRepo;
import com.example.demo.Repo.CourseRepo;
import com.example.demo.Repo.InternRepo;
import com.example.demo.Repo.JobsRepo;
import com.example.demo.entity.Internships;
import com.example.demo.entity.Jobs;
import com.example.demo.service.userservice;
import com.example.demo.entity.Applied;
import com.example.demo.entity.Courses;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private AppliedRepo repo4;
	
	@Autowired
	private userservice us;
	
	@Autowired
	private CourseRepo repo3;
	
	@Autowired
	private InternRepo repo2;
	
	@Autowired
	private JobsRepo repo;
	
	@RequestMapping("/jobs")
	public String shoejobs(Model model) {
		
		List<Jobs> jobs = repo.findAll();
		model.addAttribute("Jobs", jobs);
		return "Jobs";
	}
	
	@RequestMapping("/jobs/filter")
	public String Filter(Model model,@RequestParam String type) {
		
		List<Jobs> job = repo.findByType(type);
		model.addAttribute("Jobs", job);
		return "Jobs";
	}
	
	@RequestMapping("/intern")
	public String Interns(Model model) {
		
		List<Internships> intern = repo2.findAll();
		model.addAttribute("Intern", intern);
		return "Interns";
	}
	
	@RequestMapping("/intern/filter")
	public String filternintern(Model model,@RequestParam String type) {
		
		List<Internships> inter = repo2.findByType(type);
		model.addAttribute("Intern", inter);
		return "Interns";
	}
	
	@RequestMapping("/courses")
	public String Courses(Model model) {
		
		List<Courses> course = repo3.findAll();
		model.addAttribute("course", course);
		return "Courses";
	}
	
	@RequestMapping("/courses/filter")
	public String Course(Model model,@RequestParam String type) {
		
		List<Courses> courses = repo3.findByType(type);
		model.addAttribute("course", courses);
		return "Courses";
	}
	
	@GetMapping("/apply/{id}")
	  public String applyForJob(@PathVariable long id,Principal principal,@ModelAttribute("applied") Applied applied,RedirectAttributes redirectAttributes,Model model) {
	  
		String username = principal.getName();
		model.addAttribute("username", username);
		model.addAttribute("id", id);
		
	    return "apply";
	  }
	
	@PostMapping("/apply/{id}")
	public String applied(@PathVariable long id,@ModelAttribute("applied") Applied applied,Model model,RedirectAttributes redirectAttributes) {
		
		repo4.save(applied);
		Jobs j1 = repo.findById(id).orElse(null);
		model.addAttribute("data", j1);
		String applyLink = j1.getApplyLink();
		model.addAttribute("apply", applyLink);
		redirectAttributes.addFlashAttribute("alertMessage","data saved successfully!");
		model.addAttribute("alertMessage","Data Saved Successfully!");
		return "apply";
	}

	@RequestMapping("/jobs/Applied")
	public String Applied(Model model,Principal principal) {
		
		String username = principal.getName();
		
		List<Applied> applied = repo4.findByUsername(username);
		List<Jobs> apply = new ArrayList<>();
		for (Applied item : applied) {
		     apply.add(item.getJobs());
		}
		model.addAttribute("Applied", apply);
		System.out.println(apply);
		return "Applied";
	}
}
