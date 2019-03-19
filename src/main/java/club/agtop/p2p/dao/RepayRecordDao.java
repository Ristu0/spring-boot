package club.agtop.p2p.dao;

import club.agtop.p2p.entity.RepayRecord;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepayRecordDao {
    /**
     * 获得RepayRecord数据的总行数
     *
     * @return
     */
    long getRepayRecordRowCount();

    /**
     * 获得RepayRecord数据集合
     *
     * @return
     */
    List<RepayRecord> selectRepayRecord();

    /**
     * 获得一个RepayRecord对象,以参数RepayRecord对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    RepayRecord selectRepayRecordByObj(RepayRecord obj);

    /**
     * 通过RepayRecord的id获得RepayRecord对象
     *
     * @param id
     * @return
     */
    RepayRecord selectRepayRecordById(Integer id);

    /**
     * 插入RepayRecord到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertRepayRecord(RepayRecord value);

    /**
     * 插入RepayRecord中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyRepayRecord(RepayRecord value);

    /**
     * 通过RepayRecord的id删除RepayRecord
     *
     * @param id
     * @return
     */
    int deleteRepayRecordById(Integer id);

    /**
     * 通过RepayRecord的id更新RepayRecord中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateRepayRecordById(RepayRecord enti);

    /**
     * 通过RepayRecord的id更新RepayRecord中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyRepayRecordById(RepayRecord enti);
}