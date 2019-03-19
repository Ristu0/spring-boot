package club.agtop.p2p.service.impl;

import club.agtop.p2p.dao.MoneyRecordDao;
import club.agtop.p2p.entity.MoneyRecord;
import club.agtop.p2p.service.MoneyRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MoneyRecordServiceImpl implements MoneyRecordService {
    @Autowired
    private MoneyRecordDao moneyRecordDao;

    @Override
    public long getMoneyRecordRowCount() {
        return moneyRecordDao.getMoneyRecordRowCount();
    }

    @Override
    public List<MoneyRecord> selectMoneyRecord() {
        return moneyRecordDao.selectMoneyRecord();
    }

    @Override
    public MoneyRecord selectMoneyRecordByObj(MoneyRecord obj) {
        return moneyRecordDao.selectMoneyRecordByObj(obj);
    }

    @Override
    public MoneyRecord selectMoneyRecordById(Integer id) {
        return moneyRecordDao.selectMoneyRecordById(id);
    }

    @Override
    public int insertMoneyRecord(MoneyRecord value) {
        return moneyRecordDao.insertMoneyRecord(value);
    }

    @Override
    public int insertNonEmptyMoneyRecord(MoneyRecord value) {
        return moneyRecordDao.insertNonEmptyMoneyRecord(value);
    }

    @Override
    public int deleteMoneyRecordById(Integer id) {
        return moneyRecordDao.deleteMoneyRecordById(id);
    }

    @Override
    public int updateMoneyRecordById(MoneyRecord enti) {
        return moneyRecordDao.updateMoneyRecordById(enti);
    }

    @Override
    public int updateNonEmptyMoneyRecordById(MoneyRecord enti) {
        return moneyRecordDao.updateNonEmptyMoneyRecordById(enti);
    }

    public MoneyRecordDao getMoneyRecordDao() {
        return this.moneyRecordDao;
    }

    public void setMoneyRecordDao(MoneyRecordDao moneyRecordDao) {
        this.moneyRecordDao = moneyRecordDao;
    }

}