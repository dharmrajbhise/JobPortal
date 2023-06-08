package com.example.demo.Controller;

import java.security.Principal;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Repo.AppliedRepo;
import com.example.demo.Repo.CourseRepo;
import com.example.demo.Repo.InternRepo;
import com.example.demo.Repo.JobsRepo;
import com.example.demo.Repo.Rolerepo;
import com.example.demo.Repo.userepo;
import com.example.demo.entity.Applied;
import com.example.demo.entity.Role;
import com.example.demo.entity.user;
import com.example.demo.service.userservice;


@Controller
public class Homecontroller {
	
	@Autowired
	private AppliedRepo repo6;
	
	@Autowired
	private CourseRepo repo5;
	
	@Autowired
	private InternRepo repo4;
	
	@Autowired
	private JobsRepo repo3;
	
	@Autowired
	private userservice us;
	
	@Autowired
	private userepo repo;
	
	@Autowired
	private Rolerepo repo2;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping("/")
	public String home(Model model) {
		
		if (!model.containsAttribute("alertMessage")) {
	        model.addAttribute("alertMessage", "");
	    }
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@GetMapping("/register")
	public String register() {
		
		return "register";
	}
	
	@PostMapping("/")
	public String success(@ModelAttribute("user") user user,Model model,RedirectAttributes redirectAttributes) {
		
		Role role = repo2.save(user.getRole());
		user.setRole(role);
		
		String password = passwordEncoder.encode(user.getPassword());
		user.setPassword(password);
		repo.save(user);
		
		redirectAttributes.addFlashAttribute("alertMessage", "User registered successfully!");
		
		model.addAttribute("alertMessage", "User registered successfully!");
		
		return "redirect:/";
	}
	
	@RequestMapping("/admin")
	public String admin(Model model,Principal principal,user user) {
		
		List<user> u1 = repo.findAll();
		model.addAttribute("users", u1);
		String username = principal.getName();
		
		model.addAttribute("username", username);
		
		if (!model.containsAttribute("alertMessage")) {
	        model.addAttribute("alertMessage", "");
	    }
		
		return "admin";
	}
	
	@RequestMapping("/user")
	public String user(Model model,Principal principal) {
		
		String username = principal.getName();
		Long FindMax = repo3.findMaxId();
		Long FindMax1 = repo4.findMaxId();
		Long FindMax2 = repo5.findMaxId();
		model.addAttribute("username", username);
		model.addAttribute("FindMaxId", FindMax);
		model.addAttribute("FindMaxId2", FindMax1);
		model.addAttribute("FindMaxId3", FindMax2);
		
		user u1 = repo.findByUsername(username);
		String email = u1.getEmail();
		model.addAttribute("email", email);
		int max = 0;
		List<Applied> applied = repo6.findByUsername(username);
		
		Iterator<Applied> iterator = applied.iterator();
		
		while ( iterator.hasNext()) {
            iterator.next();
            max++;
        }
		
		model.addAttribute("max", max);
		return "user";
	}

}
