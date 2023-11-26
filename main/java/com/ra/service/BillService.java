package com.ra.service;

import com.ra.model.Bill;


import java.util.List;

public interface BillService {
    List<Bill> displayDataBill(int billId, int page, int size, String direction, String sortBy);

    List<Integer> getListPage(int billId, int size);

    Bill findById(int billId);

    List<Bill> getAllBill();

    boolean save(Bill bill);

    boolean update(Bill bill);

    boolean delete(int billId);
}
