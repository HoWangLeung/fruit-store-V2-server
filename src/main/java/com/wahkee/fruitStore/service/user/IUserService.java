package com.wahkee.fruitStore.service.user;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.models.auth.VerificationToken;

public interface IUserService {
    
  
	 void createVerificationToken(User user, String token);
    VerificationToken getVerificationToken(String VerificationToken);
}
