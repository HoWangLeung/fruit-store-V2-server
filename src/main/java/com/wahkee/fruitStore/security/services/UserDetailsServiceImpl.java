package com.wahkee.fruitStore.security.services;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService,ApplicationListener<AuthenticationSuccessEvent> {
	@Autowired
	UserRepository userRepository;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		System.out.println("UserDetailsServiceImpl : EMAIL  = " + email);
		User user = userRepository.findByEmail(email)
				.orElseThrow(() -> new UsernameNotFoundException("User Not Found with email: " + email));
		
		
		System.out.println("user  = " + user.getEmail() + " id = " + user.getId());
		return UserDetailsImpl.build(user);
	}
	
    @Override
    public void onApplicationEvent(AuthenticationSuccessEvent event) {
    	UserDetailsImpl userDetail = ((UserDetailsImpl) event.getAuthentication().
                                              getPrincipal());
      System.out.println("onApplicationEvent: ");
   
      
      
		User user = userRepository.findByEmail(userDetail.getEmail())
				.orElseThrow(() -> new RuntimeException("Error: User is not found !"));
      user.setLastLoginDate(new Date());
      
      userRepository.save(user);
    }

}