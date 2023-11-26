//package com.ra.controller;
//
//import com.ra.model.Account;
//import com.ra.model.Bill;
//import com.ra.service.AccountService;
//import com.ra.service.BillService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import java.util.List;
//import java.util.Optional;
//
//
//@Controller
//@RequestMapping("/billController")
//public class BillController {
//    @Autowired
//    private BillService billService;
//    private static final int SIZE = 3;
//    private static int accIdDefault = "";
//    private static String directionDefault = "ASC";
//    private static String sortByDefault = "accId";
//    private static int pageDefault = 1;
//
//    @GetMapping("/findAccount")
//    public ModelAndView displayAccount(Optional<String> email, Optional<Integer> page, Optional<String> direction, Optional<String> sortBy) {
//        ModelAndView mav = new ModelAndView("account");
//        emailDefault = email.orElse(emailDefault);
//        directionDefault = direction.orElse(directionDefault);
//        sortByDefault = sortBy.orElse(sortByDefault);
//        pageDefault = page.orElse(pageDefault);
//        List<Account> accountList = billService.displayDataAcc(emailDefault, pageDefault - 1, SIZE, directionDefault, sortByDefault);
//        List<Integer> listPages = billService.getListPage(emailDefault, SIZE);
//        mav.addObject("accountList", accountList);
//        mav.addObject("listPages", listPages);
//        mav.addObject("catalogName", emailDefault);
//        mav.addObject("sortBy", sortByDefault);
//        mav.addObject("direction", directionDefault);
//        return mav;
//    }
//
//    @GetMapping(value = "/initUpdate")
//    public String initBillUpdate(ModelMap modelMap, int accId) {
//        Bill billEdit = billService.findById(accId);
//        modelMap.addAttribute("billEdit", billEdit);
//        return "";
//    }
//
//    @GetMapping(value = "/intCreate")
//    public String createBill(ModelMap modelMap) {
//        Bill bill = new Bill();
//        modelMap.addAttribute("bill",bill);
//        return "";
//    }
//
//    @PostMapping(value = "/create")
//    public String saveBill(Bill bill){
//        boolean result = billService.save(bill);
//        if (result) {
//            return "redirect:...";
//        }else {
//            return "error";
//        }
//    }
//
//    @PostMapping(value = "/update")
//    public String updateBill(Bill bill) {
//        boolean result = billService.update(bill);
//        if (result) {
//            return "redirect:...";
//        } else {
//            return "error";
//        }
//    }
//
//    @GetMapping("/delete")
//    public String deleteBill(int billId) {
//        boolean result = billService.delete(billId);
//        if (result) {
//            return "redirect:....";
//        } else {
//            return "error";
//        }
//    }
//}
