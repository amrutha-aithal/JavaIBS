package com.wellsfargo.batch7.sbwibs.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wellsfargo.batch7.sbwibs.entity.AccountEntity;

@Repository
public interface AccountRepo extends JpaRepository<AccountEntity, Integer> {

}


