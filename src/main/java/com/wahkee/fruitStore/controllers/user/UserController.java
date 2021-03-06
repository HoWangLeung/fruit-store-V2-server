package com.wahkee.fruitStore.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.payload.request.others.PortfolioContact;
import com.wahkee.fruitStore.payload.response.UserProfileResponse;
import com.wahkee.fruitStore.repository.UserRepository;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;
//import com.wahkee.fruitStore.service.email.EmailServiceImpl;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/user")
public class UserController {

	@Autowired
	UserRepository userRepository;
	
//	@Autowired
//	EmailServiceImpl emailServiceImpl;

	//@PreAuthorize("hasRole('USER')")
	@GetMapping("/profile")
	public ResponseEntity<?> getUserProfile() {
		
	//	System.out.println("updating profile ======================================================================= ");

		UserDetailsImpl userDetail = ((UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal());

		
		
		User updatedUser = userRepository.findByUsername(userDetail.getUsername())
				.orElseThrow(() -> new RuntimeException("Error: User is not found !"));
		
		
		
		UserProfileResponse response = new UserProfileResponse();
		response.setEmail(userDetail.getEmail());
		response.setFirstName(updatedUser.getFirstName());
		response.setLastName(updatedUser.getLastName());
		response.setAddress(updatedUser.getAddress());
		response.setPhone(updatedUser.getPhone());
		response.setCreatedDate(updatedUser.getCreatedDate());
		response.setLastLoginDate(updatedUser.getLastLoginDate());
		
		System.out.println(response);

		return ResponseEntity.ok(response);
	}

	@PreAuthorize("hasAnyRole('USER','ROLE_ADMIN')")
	@PutMapping("/profile/update")
	public ResponseEntity<?> updateUserProfile(@RequestBody User userInfo ) {
		
		System.out.println("info ===============> " + userInfo.getFirstName());

		UserDetailsImpl userDetail = ((UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal());
		User user = userRepository.findByUsername(userDetail.getUsername())
			.orElseThrow(() -> new RuntimeException("Error: User is not found !"));
		
		System.out.println("user to update = " + user.getEmail());
		user.setFirstName(userInfo.getFirstName());
		user.setLastName(userInfo.getLastName());
		user.setAddress(userInfo.getAddress());
		user.setPhone(userInfo.getPhone());
		userRepository.save(user);
		
		User updatedUser = userRepository.findByUsername(userDetail.getUsername())
				.orElseThrow(() -> new RuntimeException("Error: User is not found !"));
		
		UserProfileResponse response = new UserProfileResponse();
		response.setEmail(userDetail.getEmail());
		response.setFirstName(updatedUser.getFirstName());
		response.setLastName(updatedUser.getLastName());
		response.setAddress(updatedUser.getAddress());
		response.setPhone(updatedUser.getPhone());
		

		return ResponseEntity.ok(response);
	}
	
	
//	@PostMapping("/portfolio/contact")
//	public ResponseEntity<?> sendPortfolioEmail(@RequestBody PortfolioContact portfolioContact,@RequestParam("exchangeName") String exchange, @RequestParam("routingKey") String routingKey) {
//		System.out.println("send portfolio email controller");
//		
//		emailServiceImpl.portfolioSendMail(exchange, routingKey, portfolioContact);
//		
//		return ResponseEntity.ok("success");
//	}
	
}
