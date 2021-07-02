package com.wahkee.fruitStore.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wahkee.fruitStore.models.ERole;
import com.wahkee.fruitStore.models.Role;
 

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
	Optional<Role> findByName(ERole name);
}