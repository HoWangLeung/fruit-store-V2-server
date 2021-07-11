package com.wahkee.fruitStore.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.models.auth.VerificationToken;
import com.wahkee.fruitStore.repository.user.VerificationTokenRepository;

@Service
public class UserService implements IUserService {
	
	@Autowired
	VerificationTokenRepository tokenRepository;
	@Override
	public VerificationToken getVerificationToken(String verificationToken) {
		// TODO Auto-generated method stub
		return tokenRepository.findByToken(verificationToken);
	}

	   @Override
	    public void createVerificationToken(User user, String token) {
	        VerificationToken myToken = new VerificationToken(token, user);
	        tokenRepository.save(myToken);
	    }

	
     
}
