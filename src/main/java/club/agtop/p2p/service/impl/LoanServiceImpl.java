package club.agtop.p2p.service.impl;

import club.agtop.p2p.dao.LoanDao;
import club.agtop.p2p.entity.Loan;
import club.agtop.p2p.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoanServiceImpl implements LoanService {
    @Autowired
    private LoanDao loanDao;

    @Override
    public long getLoanRowCount() {
        return loanDao.getLoanRowCount();
    }

    @Override
    public List<Loan> selectLoan() {
        return loanDao.selectLoan();
    }

    @Override
    public Loan selectLoanByObj(Loan obj) {
        return loanDao.selectLoanByObj(obj);
    }

    @Override
    public Loan selectLoanById(Integer id) {
        return loanDao.selectLoanById(id);
    }

    @Override
    public int insertLoan(Loan value) {
        return loanDao.insertLoan(value);
    }

    @Override
    public int insertNonEmptyLoan(Loan value) {
        return loanDao.insertNonEmptyLoan(value);
    }

    @Override
    public int deleteLoanById(Integer id) {
        return loanDao.deleteLoanById(id);
    }

    @Override
    public int updateLoanById(Loan enti) {
        return loanDao.updateLoanById(enti);
    }

    @Override
    public int updateNonEmptyLoanById(Loan enti) {
        return loanDao.updateNonEmptyLoanById(enti);
    }

    public LoanDao getLoanDao() {
        return this.loanDao;
    }

    public void setLoanDao(LoanDao loanDao) {
        this.loanDao = loanDao;
    }

}