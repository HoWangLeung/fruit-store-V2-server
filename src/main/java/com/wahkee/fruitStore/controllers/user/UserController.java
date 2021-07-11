package com.wahkee.fruitStore.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.repository.UserRepository;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/user")
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@PreAuthorize("hasRole('USER')")
	@GetMapping("/profile")
	public ResponseEntity<?> getUserProfile() {
	 
		UserDetailsImpl userDetail = ((UserDetailsImpl)SecurityContextHolder.getContext().getAuthentication().getPrincipal());
		
		User user = userRepository.findByUsername(userDetail.getUsername())
				.orElseThrow(() -> new RuntimeException("Error: User is not found."));
		
		 
		return ResponseEntity.ok(userDetail);
	}
}
