package club.agtop.p2p.service.impl;

import club.agtop.p2p.dao.RepayRecordDao;
import club.agtop.p2p.entity.RepayRecord;
import club.agtop.p2p.service.RepayRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepayRecordServiceImpl implements RepayRecordService {
    @Autowired
    private RepayRecordDao repayRecordDao;

    @Override
    public long getRepayRecordRowCount() {
        return repayRecordDao.getRepayRecordRowCount();
    }

    @Override
    public List<RepayRecord> selectRepayRecord() {
        return repayRecordDao.selectRepayRecord();
    }

    @Override
    public RepayRecord selectRepayRecordByObj(RepayRecord obj) {
        return repayRecordDao.selectRepayRecordByObj(obj);
    }

    @Override
    public RepayRecord selectRepayRecordById(Integer id) {
        return repayRecordDao.selectRepayRecordById(id);
    }

    @Override
    public int insertRepayRecord(RepayRecord value) {
        return repayRecordDao.insertRepayRecord(value);
    }

    @Override
    public int insertNonEmptyRepayRecord(RepayRecord value) {
        return repayRecordDao.insertNonEmptyRepayRecord(value);
    }

    @Override
    public int deleteRepayRecordById(Integer id) {
        return repayRecordDao.deleteRepayRecordById(id);
    }

    @Override
    public int updateRepayRecordById(RepayRecord enti) {
        return repayRecordDao.updateRepayRecordById(enti);
    }

    @Override
    public int updateNonEmptyRepayRecordById(RepayRecord enti) {
        return repayRecordDao.updateNonEmptyRepayRecordById(enti);
    }

    public RepayRecordDao getRepayRecordDao() {
        return this.repayRecordDao;
    }

    public void setRepayRecordDao(RepayRecordDao repayRecordDao) {
        this.repayRecordDao = repayRecordDao;
    }

}