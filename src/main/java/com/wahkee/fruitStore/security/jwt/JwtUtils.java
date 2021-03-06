package com.wahkee.fruitStore.security.jwt;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import com.wahkee.fruitStore.others.binding.AppProperties;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;
import com.wahkee.fruitStore.security.social.tokenProvider.TokenProvider;

import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SignatureException;
import io.jsonwebtoken.UnsupportedJwtException;

@Component
public class JwtUtils {
	private static final Logger logger = LoggerFactory.getLogger(JwtUtils.class);

	@Value("${derek.app.jwtSecret}")
	private String jwtSecret;

	@Value("${derek.app.jwtExpirationMs}")
	private int jwtExpirationMs;
	
	//NEW
    private AppProperties appProperties;

    public JwtUtils(AppProperties appProperties) {
        this.appProperties = appProperties;
    }
	//NEW

	public String generateJwtToken(Authentication authentication) {

		UserDetailsImpl userPrincipal = (UserDetailsImpl) authentication.getPrincipal();

		return Jwts.builder()
				.setSubject((userPrincipal.getEmail()))
				.setIssuedAt(new Date())
				.setExpiration(new Date((new Date()).getTime() + jwtExpirationMs))
				.signWith(SignatureAlgorithm.HS512, appProperties.getAuth().getTokenSecret())
				.compact();
	}

	public String getUserNameFromJwtToken(String token) {
		System.out.println("GET USER FROM JWT TOKEN : ");
		System.out.println(Jwts.parser().setSigningKey(appProperties.getAuth().getTokenSecret()).parseClaimsJws(token).getBody());
		
		return Jwts.parser().setSigningKey(appProperties.getAuth().getTokenSecret()).parseClaimsJws(token).getBody().getSubject();
	}

	public boolean validateJwtToken(String authToken) {
		try {
			Jwts.parser().setSigningKey(appProperties.getAuth().getTokenSecret()).parseClaimsJws(authToken);
			return true;
		} catch (SignatureException e) {
			logger.error("Invalid JWT signature: {}", e.getMessage());
		} catch (MalformedJwtException e) {
			logger.error("Invalid JWT token: {}", e.getMessage());
		} catch (ExpiredJwtException e) {
			logger.error("JWT token is expired: {}", e.getMessage());
		} catch (UnsupportedJwtException e) {
			logger.error("JWT token is unsupported: {}", e.getMessage());
		} catch (IllegalArgumentException e) {
			logger.error("JWT claims string is empty: {}", e.getMessage());
		}

		return false;
	}
}