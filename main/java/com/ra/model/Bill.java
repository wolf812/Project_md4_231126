package com.ra.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
@Entity
@Table(name = "Bill")
public class Bill {
    @Id
    @Column(name = "bill_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int billId;

    @ManyToOne
    @JoinColumn(name = "Acc_Id",referencedColumnName = "Acc_Id")
    private Account account;

    @Column(name = "created")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date created;

    @Column(name = "bill_Status")
    private boolean status;

    public Bill() {
    }

    public Bill(int billId, Account account, Date created, boolean status) {
        this.billId = billId;
        this.account = account;
        this.created = created;
        this.status = status;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}


