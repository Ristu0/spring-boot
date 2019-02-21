package com.baizhi.service.impl;
import java.util.List;
import com.baizhi.dao.PersonDao;
import com.baizhi.entity.Person;
import com.baizhi.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class PersonServiceImpl implements PersonService{
    @Autowired
    private PersonDao personDao;
    @Override
    public long getPersonRowCount(){
        return personDao.getPersonRowCount();
    }
    @Override
    public List<Person> selectPerson(){
        return personDao.selectPerson();
    }
    @Override
    public Person selectPersonByObj(Person obj){
        return personDao.selectPersonByObj(obj);
    }
    @Override
    public Person selectPersonById(Integer id){
        return personDao.selectPersonById(id);
    }
    @Override
    public int insertPerson(Person value){
        return personDao.insertPerson(value);
    }
    @Override
    public int insertNonEmptyPerson(Person value){
        return personDao.insertNonEmptyPerson(value);
    }
    @Override
    public int deletePersonById(Integer id){
        return personDao.deletePersonById(id);
    }
    @Override
    public int updatePersonById(Person enti){
        return personDao.updatePersonById(enti);
    }
    @Override
    public int updateNonEmptyPersonById(Person enti){
        return personDao.updateNonEmptyPersonById(enti);
    }

    public PersonDao getPersonDao() {
        return this.personDao;
    }

    public void setPersonDao(PersonDao personDao) {
        this.personDao = personDao;
    }

}