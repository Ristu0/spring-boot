package com.baizhi.service;
import java.util.List;
import com.baizhi.entity.Person;
public interface PersonService{
	/**
	 * 获得Person数据的总行数
	 * @return
	 */
    long getPersonRowCount();
	/**
	 * 获得Person数据集合
	 * @return
	 */
    List<Person> selectPerson();
	/**
	 * 获得一个Person对象,以参数Person对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Person selectPersonByObj(Person obj);
	/**
	 * 通过Person的id获得Person对象
	 * @param id
	 * @return
	 */
    Person selectPersonById(Integer id);
	/**
	 * 插入Person到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertPerson(Person value);
	/**
	 * 插入Person中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyPerson(Person value);
	/**
	 * 通过Person的id删除Person
	 * @param id
	 * @return
	 */
    int deletePersonById(Integer id);
	/**
	 * 通过Person的id更新Person中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updatePersonById(Person enti);
	/**
	 * 通过Person的id更新Person中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyPersonById(Person enti);
}