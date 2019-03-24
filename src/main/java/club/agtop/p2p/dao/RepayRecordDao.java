package club.agtop.p2p.dao;

import club.agtop.p2p.entity.RepayRecord;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepayRecordDao {
    /**
     * 查询所有的还款记录
     */
    List<RepayRecord> selectAll();
}