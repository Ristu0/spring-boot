package club.agtop.p2p.service;

import club.agtop.p2p.entity.Invest;

import java.util.List;

public interface InvestService {
    /**
     * 获得Invest数据的总行数
     *
     * @return
     */
    long getInvestRowCount();

    /**
     * 获得Invest数据集合
     *
     * @return
     */
    List<Invest> selectInvest();

    /**
     * 获得一个Invest对象,以参数Invest对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    Invest selectInvestByObj(Invest obj);

    /**
     * 通过Invest的id获得Invest对象
     *
     * @param id
     * @return
     */
    Invest selectInvestById(Integer id);

    /**
     * 插入Invest到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertInvest(Invest value);

    /**
     * 插入Invest中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyInvest(Invest value);

    /**
     * 通过Invest的id删除Invest
     *
     * @param id
     * @return
     */
    int deleteInvestById(Integer id);

    /**
     * 通过Invest的id更新Invest中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateInvestById(Invest enti);

    /**
     * 通过Invest的id更新Invest中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyInvestById(Invest enti);
}