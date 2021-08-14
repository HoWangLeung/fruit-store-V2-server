package com.wahkee.fruitStore.controllers;

import java.security.Principal;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
//@EnableOAuth2Sso
public class HelloController {


	@GetMapping("/")
	public String sayHello(Principal principal) {

		return "Hi welcome to SpringCloudOauth2ExampleApplication " ;
	}


}