package com.wellsfargo.batch7.sbwibs.repo;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.wellsfargo.batch7.sbwibs.entity.AccountEntity;
import com.wellsfargo.batch7.sbwibs.entity.CustomerEntity;
import com.wellsfargo.batch7.sbwibs.model.AccountModel;

@Repository
public interface AccountRepo extends JpaRepository<AccountEntity, Long> {

	List<AccountEntity> findAllByCustomer(CustomerEntity customer);
	
	@Query(value="select * from ibs_accounts a where a.acc_type='savings'",nativeQuery = true)
	List<AccountEntity> findAllSavingsAccountByCustomer(CustomerEntity customer);
	
	@Query(value="select * from ibs_accounts a where a.acc_type='fixeddeposit'",nativeQuery = true)
	List<AccountEntity> findAllFixedDepositByCustomer(CustomerEntity customer);

	@Query(value="select * from ibs_accounts a where a.acc_type='recurringdeposit'",nativeQuery = true)
	List<AccountEntity> findAllRecurringDepositByCustomer(CustomerEntity customer);
	
}


