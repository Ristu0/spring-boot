package club.agtop.p2p.dao;

import club.agtop.p2p.entity.Login;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoginDao {
    /**
     * 获得Login数据的总行数
     *
     * @return
     */
    long getLoginRowCount();

    /**
     * 获得Login数据集合
     *
     * @return
     */
    List<Login> selectLogin();

    /**
     * 获得一个Login对象,以参数Login对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    Login selectLoginByObj(Login obj);

    /**
     * 通过Login的id获得Login对象
     *
     * @param id
     * @return
     */
    Login selectLoginById(Integer id);

    /**
     * 插入Login到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertLogin(Login value);

    /**
     * 插入Login中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyLogin(Login value);

    /**
     * 通过Login的id删除Login
     *
     * @param id
     * @return
     */
    int deleteLoginById(Integer id);

    /**
     * 通过Login的id更新Login中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateLoginById(Login enti);

    /**
     * 通过Login的id更新Login中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyLoginById(Login enti);
}