package com.wellsfargo.batch7.sbwibs.repo;

import java.time.LocalDate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;

@Repository
public interface CustomerRepo extends JpaRepository<CustomerEntity, Long> {

	boolean existsByEmailId(String emailId);
	boolean existsByDateOfBirth(String dateOfBirth);
	CustomerEntity findByEmailId(String emailId);

}


