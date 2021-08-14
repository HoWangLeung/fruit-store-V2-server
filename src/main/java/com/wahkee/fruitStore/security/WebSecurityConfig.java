package com.wahkee.fruitStore.security;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.wahkee.fruitStore.security.jwt.AuthEntryPointJwt;
import com.wahkee.fruitStore.security.jwt.AuthTokenFilter;
import com.wahkee.fruitStore.security.services.UserDetailsServiceImpl;
import com.wahkee.fruitStore.security.social.CustomOAuth2UserService;
import com.wahkee.fruitStore.security.social.CustomUserDetailsService;
import com.wahkee.fruitStore.security.social.HttpCookieOAuth2AuthorizationRequestRepository;
import com.wahkee.fruitStore.security.social.handler.OAuth2AuthenticationFailureHandler;
import com.wahkee.fruitStore.security.social.handler.OAuth2AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(
		// securedEnabled = true,
		// jsr250Enabled = true,
		prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	  @Autowired
	    private CustomUserDetailsService customUserDetailsService;

	    @Autowired
	    private CustomOAuth2UserService customOAuth2UserService;

	    @Autowired
	    private OAuth2AuthenticationSuccessHandler oAuth2AuthenticationSuccessHandler;

	    @Autowired
	    private OAuth2AuthenticationFailureHandler oAuth2AuthenticationFailureHandler;
	    
	    @Autowired
	    private HttpCookieOAuth2AuthorizationRequestRepository httpCookieOAuth2AuthorizationRequestRepository;
	    
	    //===========================================
	
	@Autowired
	UserDetailsServiceImpl userDetailsService;

	@Autowired
	private AuthEntryPointJwt unauthorizedHandler;

	@Bean
	public AuthTokenFilter authenticationJwtTokenFilter() {
		return new AuthTokenFilter();
	}

	@Override
	public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
		authenticationManagerBuilder.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}

	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	  @Bean
	    public HttpCookieOAuth2AuthorizationRequestRepository cookieAuthorizationRequestRepository() {
	        return new HttpCookieOAuth2AuthorizationRequestRepository();
	    }
	  
 
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors().and().csrf().disable()
			.exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
			.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
			.authorizeRequests().antMatchers("/api/auth/**").permitAll()
			.antMatchers(
					"/",
					"/api/products/",
					"/api/test/**",
					"/api/orders/",
					"/api/orders/add",
					"/api/orders/order",
					"/api/payment/charge",
					"/javainuse-rabbitmq/topic/**"
					
					).permitAll()
			.anyRequest().authenticated()
	         .and()
             .oauth2Login()
                 .authorizationEndpoint()
                     .baseUri("/oauth2/authorize")
                     .authorizationRequestRepository(cookieAuthorizationRequestRepository())
                     .and()
                 .redirectionEndpoint()
                     .baseUri("/oauth2/callback/*")
                     .and()
                 .userInfoEndpoint()
                     .userService(customOAuth2UserService)
                     .and()
                 .successHandler(oAuth2AuthenticationSuccessHandler)
                 .failureHandler(oAuth2AuthenticationFailureHandler);
			
	
		
		

		http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
		  
	}
}