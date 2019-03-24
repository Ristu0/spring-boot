package club.agtop.p2p.controller;

import club.agtop.p2p.entity.Loan;
import club.agtop.p2p.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class LoanController {
    @Autowired
    private LoanService loanService;

    @RequestMapping("/uncheckLoanList")
    public String loanList(HttpServletRequest request) {
        List<Loan> loans = loanService.selectLoan();
        request.setAttribute("loans", loans);
        return "admin/uncheck_borrow";
    }

    @RequestMapping("/checkLoanList")
    public String checkLoanList(HttpServletRequest request) {
        List<Loan> loans = loanService.selectLoan();
        request.setAttribute("loans", loans);
        return "admin/check_borrow";
    }

    @RequestMapping("/unpassLoanList")
    public String unpassLoanList(HttpServletRequest request) {
        List<Loan> loans = loanService.selectLoan();
        request.setAttribute("loans", loans);
        return "admin/unpass_borrow";
    }

    @RequestMapping("/passLoan")
    public String passLoan(Loan loan) {
        loan.setStatus(2);
        loanService.updateNonEmptyLoanById(loan);
        return "admin/uncheck_borrow";
    }

    @RequestMapping("/unpassLoan")
    public String unpassLoan(Loan loan) {
        loan.setStatus(3);
        loanService.updateNonEmptyLoanById(loan);
        return "admin/uncheck_borrow";
    }

}
