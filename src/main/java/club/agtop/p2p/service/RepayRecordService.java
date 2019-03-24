package club.agtop.p2p.service;

import club.agtop.p2p.entity.RepayRecord;

import java.util.List;

public interface RepayRecordService {
    /**
     * 获取所有借款信息
     */
    List<RepayRecord> repayList();
}