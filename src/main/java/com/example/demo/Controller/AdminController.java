package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Repo.CourseRepo;
import com.example.demo.Repo.InternRepo;
import com.example.demo.Repo.JobsRepo;
import com.example.demo.entity.Courses;
import com.example.demo.entity.Internships;
import com.example.demo.entity.Jobs;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private CourseRepo repo2;
	
	@Autowired
	private InternRepo repo1;
	
	@Autowired
	private JobsRepo repo;
	
	@GetMapping("/addJobs")
	public String addJobs() {
		
		return "addJobs";
	}
	
	@PostMapping("/JobAdded")
	public String JobAdded(@ModelAttribute("Jobs") Jobs job,Model model,RedirectAttributes redirectAttributes) {
		
			repo.save(job);
		redirectAttributes.addFlashAttribute("alertMessage", "Job added successfully!");
		model.addAttribute("alertMessage", "Job Added Successfully");
		return "redirect:/admin";
	}
	
	@RequestMapping("/addIntern")
	public String InternAdd() {
		
		return "addIntern";
	}
	
	@RequestMapping("/InternAdded")
	public String Internadded(@ModelAttribute("Internships") Internships Intern, RedirectAttributes redirectAttributes,Model model) {
		
		repo1.save(Intern);
		redirectAttributes.addFlashAttribute("alertMessage", "Internship added successfully!");
		model.addAttribute("alertMessage", "Internhip Added successfully!");
		return "redirect:/admin";
	}
	
	@RequestMapping("/addCourse")
	public String addCourse() {
		
		return "addCourse";
	}
	
	@RequestMapping("/CourseAdded")
	public String CourseAdded(@ModelAttribute("Courses") Courses course,RedirectAttributes redirectAttributes,Model model) {
		
		repo2.save(course);
		redirectAttributes.addFlashAttribute("alertMessage","Course Added Successfully!");
		model.addAttribute("alertMessage", "Course Added Successfully!");
		return "redirect:/admin";
	}
	
	

}
