package club.agtop.p2p.dao;

import club.agtop.p2p.entity.Project;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProjectDao {
    /**
     * 获得Project数据的总行数
     *
     * @return
     */
    long getProjectRowCount();

    /**
     * 获得Project数据集合
     *
     * @return
     */
    List<Project> selectProject();

    /**
     * 获得一个Project对象,以参数Project对象中不为空的属性作为条件进行查询
     *
     * @param obj
     * @return
     */
    Project selectProjectByObj(Project obj);

    /**
     * 通过Project的id获得Project对象
     *
     * @param id
     * @return
     */
    Project selectProjectById(Integer id);

    /**
     * 插入Project到数据库,包括null值
     *
     * @param value
     * @return
     */
    int insertProject(Project value);

    /**
     * 插入Project中属性值不为null的数据到数据库
     *
     * @param value
     * @return
     */
    int insertNonEmptyProject(Project value);

    /**
     * 通过Project的id删除Project
     *
     * @param id
     * @return
     */
    int deleteProjectById(Integer id);

    /**
     * 通过Project的id更新Project中的数据,包括null值
     *
     * @param enti
     * @return
     */
    int updateProjectById(Project enti);

    /**
     * 通过Project的id更新Project中属性不为null的数据
     *
     * @param enti
     * @return
     */
    int updateNonEmptyProjectById(Project enti);


}