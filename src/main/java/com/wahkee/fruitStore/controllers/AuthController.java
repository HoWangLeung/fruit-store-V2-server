package com.wahkee.fruitStore.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.ERole;
import com.wahkee.fruitStore.models.Role;
import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.models.auth.VerificationToken;
import com.wahkee.fruitStore.models.user.AuthProvider;
import com.wahkee.fruitStore.payload.request.LoginRequest;
import com.wahkee.fruitStore.payload.request.SignupRequest;
import com.wahkee.fruitStore.payload.request.auth.UpdatePasswordForm;
import com.wahkee.fruitStore.payload.response.JwtResponse;
import com.wahkee.fruitStore.payload.response.MessageResponse;
import com.wahkee.fruitStore.repository.RoleRepository;
import com.wahkee.fruitStore.repository.UserRepository;
import com.wahkee.fruitStore.security.jwt.JwtUtils;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;
import com.wahkee.fruitStore.security.social.CurrentUser;
import com.wahkee.fruitStore.security.social.UserPrincipal;
import com.wahkee.fruitStore.security.social.exception.ResourceNotFoundException;
import com.wahkee.fruitStore.service.email.EmailServiceImpl;
import com.wahkee.fruitStore.service.user.UserService;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/auth")
public class AuthController {
	@Autowired
	AuthenticationManager authenticationManager;

	@Autowired
	UserRepository userRepository;

	@Autowired
	RoleRepository roleRepository;

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	JwtUtils jwtUtils;

	@Autowired
	EmailServiceImpl emailServiceImpl;

	@Autowired
	UserService userService;

	@Autowired
	private Environment env;

	private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@PostMapping("/signin")
	public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {

		Authentication authentication = authenticationManager.authenticate(
				new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getPassword()));

		SecurityContextHolder.getContext().setAuthentication(authentication);
		String jwt = jwtUtils.generateJwtToken(authentication);

		UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
		List<String> roles = userDetails.getAuthorities().stream().map(item -> item.getAuthority())
				.collect(Collectors.toList());

		return ResponseEntity.ok(
				new JwtResponse(jwt, userDetails.getId(), userDetails.getUsername(), userDetails.getEmail(), roles));
	}

	@PostMapping("/signup")
	public ResponseEntity<?> registerUser(HttpServletRequest request, @Valid @RequestBody SignupRequest signUpRequest,
			@RequestParam("exchangeName") String exchange, @RequestParam("routingKey") String routingKey) {
		String appUrl = request.getContextPath();

		System.out.println("APP URL " + appUrl);

		if (userRepository.existsByEmail(signUpRequest.getEmail())) {
			return ResponseEntity.badRequest().body(new MessageResponse("Error: Email is already in use!"));
		}

		// Create new user's account
		User user = new User(signUpRequest.getEmail(), encoder.encode(signUpRequest.getPassword()));

		Set<String> strRoles = signUpRequest.getRole();

		Set<Role> roles = new HashSet<>();

		if (strRoles == null) {
			Role userRole = roleRepository.findByName(ERole.ROLE_USER)
					.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
			roles.add(userRole);
		} else {
			strRoles.forEach(role -> {
				switch (role) {
				case "admin":
					Role adminRole = roleRepository.findByName(ERole.ROLE_ADMIN)
							.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
					roles.add(adminRole);

					break;
				case "mod":
					Role modRole = roleRepository.findByName(ERole.ROLE_MODERATOR)
							.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
					roles.add(modRole);

					break;
				default:
					Role userRole = roleRepository.findByName(ERole.ROLE_USER)
							.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
					roles.add(userRole);
				}
			});
		}

		user.setRoles(roles);
		userRepository.save(user);
		emailServiceImpl.sendEmail(exchange, routingKey, user);

		return ResponseEntity.ok(new MessageResponse("User registered successfully!"));
	}

	@GetMapping("/regitrationConfirm")
	public String confirmRegistration(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("token") String token) throws IOException {
		System.out.println("TOKEN RECEIVED  = " + token);
		System.out.println("getting /regitrationConfirm");
		System.out.println("WEB REQUEST " + request);

		VerificationToken verificationToken = userService.getVerificationToken(token);
		if (verificationToken == null) {
			System.out.println("NO TOKEN IN DB , ERROR");
		}

		User user = verificationToken.getUser();
		Calendar cal = Calendar.getInstance();
		if ((verificationToken.getExpiryDate().getTime() - cal.getTime().getTime()) <= 0) {
			System.out.println("EXCEEDED TIMEOUT ERROR");
		}
		String clientUrl = env.getProperty("clientUrl");
		user.setEnabled(true);
		userRepository.save(user);
		redirectStrategy.sendRedirect(request, response, clientUrl);
		return "VERIFED";
	}

	@PutMapping("/updatePassword")
	public ResponseEntity<?> updatePassword(@RequestBody UpdatePasswordForm updatePasswordForm) {
		
		String newPassword1 = updatePasswordForm.getNewPassword1();
		String newPassword2 = updatePasswordForm.getNewPassword2();
		
		UserDetailsImpl userDetail = ((UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal());

		System.out.println("updatePasswordForm " + updatePasswordForm.getCurrentPassword());
		System.out.println("userDetail = " + userDetail.getEmail() + " " + userDetail.getProvider());
		User user = userRepository.findByEmail(userDetail.getEmail())
				.orElseThrow(() -> new RuntimeException("Error: User is not found !"));
		
		if(userDetail.getProvider().equals(AuthProvider.local) && newPassword1.equals(newPassword2)) {
			user.setPassword(encoder.encode(updatePasswordForm.getNewPassword1()));
			userRepository.save(user);
			
		}
		

		return null;

	}

	@GetMapping("/user/me")
	@PreAuthorize("hasRole('USER')")
	public User getCurrentUser(@CurrentUser UserPrincipal userPrincipal) {
		return userRepository.findById(userPrincipal.getId())
				.orElseThrow(() -> new ResourceNotFoundException("User", "id", userPrincipal.getId()));
	}

}