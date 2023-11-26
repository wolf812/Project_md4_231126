package com.ra.serviceImp;

import com.ra.model.Account;
import com.ra.model.Bill;
import com.ra.repository.BillRepository;
import com.ra.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.ArrayList;
import java.util.List;

public class BillServiceImp implements BillService {
    @Autowired
    private BillRepository billRepository;

    @Override
    public List<Bill> displayDataBill(int billId, int page, int size, String direction, String sortBy) {
        Pageable pageable = PageRequest.of(page, size, direction.equals("ASC") ? Sort.Direction.ASC : Sort.Direction.DESC, sortBy);
        List<Bill> billList = billRepository.findByBillId(billId, pageable).getContent();
        return billList;
    }

    @Override
    public List<Integer> getListPage(int billId, int size) {
        int countBill = billRepository.countByBillIdContains(billId);
        List<Integer> listPage = new ArrayList<>();
        for (int i = 0; i < (int) Math.ceil((double) countBill / (double) size); i++) {
            listPage.add(i + 1);
        }
        return listPage;
    }

    @Override
    public Bill findById(int billId) {
        try {
            Bill billById = billRepository.findById(billId).get();
            return billById;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Bill> getAllBill() {
        return null;
    }

    @Override
    public boolean save(Bill bill) {
        try {
            billRepository.save(bill);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Bill bill) {
        try {
            billRepository.save(bill);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int billId) {
        try {
            billRepository.deleteById(billId);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
