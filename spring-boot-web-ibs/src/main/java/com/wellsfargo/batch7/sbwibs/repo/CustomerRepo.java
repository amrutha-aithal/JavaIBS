package com.wellsfargo.batch7.sbwibs.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;

@Repository
public interface CustomerRepo extends JpaRepository<CustomerEntity, Integer> {
	//List<CustomerEntity> findAllByAdbGroup(IbsUserEntity adbGroup);

}


