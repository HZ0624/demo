package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.CurrentSecurityContext;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.User;
import com.example.demo.entity.UserService;

@Controller
public class controller {
	@Autowired
	private UserService userService;
	
	// get homepage
	@GetMapping("/")
	public String getHomePage() {
		return "signin";
	}
	
	// get about page
	@GetMapping("/about")
	public String getAboutPage() {
		return "about";
	}
	
	// get contact page
	@GetMapping("/contact")
	public String getContactPage() {
		return "contact";
	}
	
	// get signin page
	@GetMapping("/signin")
	public String getSignInPage() {
		return "signin";
	}
	
	// get signup page
	@GetMapping("/signup")
	public String getSignUpPage() {
		return "signup";
	}
	
	// get dashboard page
			@GetMapping("/dashboard")
			public String getDashboardPage(Model model, @CurrentSecurityContext(expression = "authentication?.name") String username) {
				List<User> users = userService.retrieveAllUserProfile();
				model.addAttribute("users", users);
				
				//retrieve loggedinuser id
				User loggedInUser = userService.getUserByUsername(username);
				model.addAttribute("person", loggedInUser);
				
				
				return "dashboard";
			}
			
			//get profile page
			@GetMapping("/profile")
			public String getProfilePage(Model model, @RequestParam("id") Integer user_id) {
				User user = userService.getUserById(user_id);
				model.addAttribute("user", user);
				return "profile";
			}
	// post method to process registration
		
			@PostMapping("/process_signup")
			public String register(Model model, @ModelAttribute("user") User user) {
				
				BCryptPasswordEncoder PasswordEncoder = new BCryptPasswordEncoder();
				String encodedPassword = PasswordEncoder.encode(user.getPassword());
				user.setPassword(encodedPassword);
				
				userService.saveUser(user);
				
				return "thank-you";
			
			
			
			
		}
			
			@PostMapping("/update-profile")
		    public String updateUserProfile(Model model, @ModelAttribute("user") User tmp, @RequestParam("id") Integer user_id) {
		        User user = userService.getUserById(user_id);

		        user.setFirstname(tmp.getFirstname());
		        user.setLastname(tmp.getLastname());
		        user.setCompany(tmp.getCompany());
		        user.setCity(tmp.getCity());
		        user.setCountry(tmp.getCountry());

		        userService.saveUser(user);

		        return "redirect:dashboard";
		    
		}
			
			@PostMapping("/dashboard")
			public void search(Model model, HttpServletRequest request) {
				String keyword = request.getParameter("keyword");
				List<User> users = userService.search(keyword);
				Integer count = users.size();
				
				model.addAttribute("count", count);
				model.addAttribute("users", users);
				//return "dashboard";
			}
}