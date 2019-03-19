package club.agtop.p2p.service.impl;

import club.agtop.p2p.dao.InvestDao;
import club.agtop.p2p.entity.Invest;
import club.agtop.p2p.service.InvestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InvestServiceImpl implements InvestService {
    @Autowired
    private InvestDao investDao;

    @Override
    public long getInvestRowCount() {
        return investDao.getInvestRowCount();
    }

    @Override
    public List<Invest> selectInvest() {
        return investDao.selectInvest();
    }

    @Override
    public Invest selectInvestByObj(Invest obj) {
        return investDao.selectInvestByObj(obj);
    }

    @Override
    public Invest selectInvestById(Integer id) {
        return investDao.selectInvestById(id);
    }

    @Override
    public int insertInvest(Invest value) {
        return investDao.insertInvest(value);
    }

    @Override
    public int insertNonEmptyInvest(Invest value) {
        return investDao.insertNonEmptyInvest(value);
    }

    @Override
    public int deleteInvestById(Integer id) {
        return investDao.deleteInvestById(id);
    }

    @Override
    public int updateInvestById(Invest enti) {
        return investDao.updateInvestById(enti);
    }

    @Override
    public int updateNonEmptyInvestById(Invest enti) {
        return investDao.updateNonEmptyInvestById(enti);
    }

    public InvestDao getInvestDao() {
        return this.investDao;
    }

    public void setInvestDao(InvestDao investDao) {
        this.investDao = investDao;
    }

}