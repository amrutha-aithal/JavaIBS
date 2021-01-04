package com.wellsfargo.batch7.sbwibs.repo;


import java.time.LocalDate;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.wellsfargo.batch7.sbwibs.entity.AccountEntity;
import com.wellsfargo.batch7.sbwibs.entity.FundTransactionEntity;

@Repository
public interface FundTransactionRepo extends JpaRepository<FundTransactionEntity, Long> {

	List<FundTransactionEntity> findAllByAccount(AccountEntity account);

	@Query(value="select * from ibs_fund_transaction f where f.txn_date between :startDate and :endDate and f.acno=:accountNum",nativeQuery = true)
	List<FundTransactionEntity> getMonthlyStmnt(@Param("startDate") LocalDate startDate,@Param("endDate") LocalDate endDate, @Param("accountNum")Long accountNum);

	@Query(value="select * from ibs_fund_transaction f where f.funds=:spId",nativeQuery = true)
	List<FundTransactionEntity> getStatements(@Param("spId")Long spId);

}


