package club.agtop.p2p.service;

import club.agtop.p2p.entity.MoneyRecord;

import java.util.List;

public interface MoneyRecordService {
    /**
     * 获得MoneyRecord数据的总行数
     *
     * @return
     */
    long getMoneyRecordRowCount();

    /**
     * 获得MoneyRecord数据集合
     *
     * @return
     */
    List<MoneyRecord> selectMoneyRecord();

    /**
     * 获得一个MoneyRecord对象,以参数MoneyRecord对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    MoneyRecord selectMoneyRecordByObj(MoneyRecord obj);

    /**
     * 通过MoneyRecord的id获得MoneyRecord对象
     *
     * @param id
     * @return
     */
    MoneyRecord selectMoneyRecordById(Integer id);

    /**
     * 插入MoneyRecord到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertMoneyRecord(MoneyRecord value);

    /**
     * 插入MoneyRecord中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyMoneyRecord(MoneyRecord value);

    /**
     * 通过MoneyRecord的id删除MoneyRecord
     *
     * @param id
     * @return
     */
    int deleteMoneyRecordById(Integer id);

    /**
     * 通过MoneyRecord的id更新MoneyRecord中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateMoneyRecordById(MoneyRecord enti);

    /**
     * 通过MoneyRecord的id更新MoneyRecord中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyMoneyRecordById(MoneyRecord enti);
}