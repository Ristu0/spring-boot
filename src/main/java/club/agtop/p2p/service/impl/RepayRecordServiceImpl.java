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
    public List<RepayRecord> repayList() {
        return repayRecordDao.selectAll();
    }
}