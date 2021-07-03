package com.wahkee.fruitStore.controllers;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.ERole;
import com.wahkee.fruitStore.models.Role;
import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.payload.request.LoginRequest;
import com.wahkee.fruitStore.payload.request.SignupRequest;
import com.wahkee.fruitStore.payload.response.JwtResponse;
import com.wahkee.fruitStore.payload.response.MessageResponse;
import com.wahkee.fruitStore.repository.RoleRepository;
import com.wahkee.fruitStore.repository.UserRepository;
import com.wahkee.fruitStore.security.jwt.JwtUtils;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
public class HelloController {


	@GetMapping("/")
	public String sayHello() {

		return "HELLO";
	}


}