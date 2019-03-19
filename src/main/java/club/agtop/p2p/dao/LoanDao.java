package club.agtop.p2p.dao;

import club.agtop.p2p.entity.Loan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoanDao {
    /**
     * 获得Loan数据的总行数
     *
     * @return
     */
    long getLoanRowCount();

    /**
     * 获得Loan数据集合
     *
     * @return
     */
    List<Loan> selectLoan();

    /**
     * 获得一个Loan对象,以参数Loan对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    Loan selectLoanByObj(Loan obj);

    /**
     * 通过Loan的id获得Loan对象
     *
     * @param id
     * @return
     */
    Loan selectLoanById(Integer id);

    /**
     * 插入Loan到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertLoan(Loan value);

    /**
     * 插入Loan中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyLoan(Loan value);

    /**
     * 通过Loan的id删除Loan
     *
     * @param id
     * @return
     */
    int deleteLoanById(Integer id);

    /**
     * 通过Loan的id更新Loan中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateLoanById(Loan enti);

    /**
     * 通过Loan的id更新Loan中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyLoanById(Loan enti);
}