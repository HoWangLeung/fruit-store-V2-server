package com.wahkee.fruitStore.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.models.auth.VerificationToken;

public interface VerificationTokenRepository  extends JpaRepository<VerificationToken, Long> {

  VerificationToken findByToken(String token);

  VerificationToken findByUser(User user);
  
  VerificationToken findByToken(VerificationToken token);
}
