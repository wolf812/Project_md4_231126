package com.ra.repository;

import com.ra.model.Bill;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface BillRepository extends JpaRepository<Bill,Integer> {
    @Query("select b from Bill b where b.billId = ?1")
    Page<Bill> findByBillId(int billId, Pageable pageable);
    int countByBillIdContains(int billId);
}
