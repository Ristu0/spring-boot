package com.baizhi.entity;

import java.io.Serializable;

public class Person implements Serializable {
    private Integer id;
    private String name;
    private Integer age;
    private Double salary;
    public Person() {
        super();
    }
    public Person(Integer id,String name,Integer age,Double salary) {
        super();
        this.id = id;
        this.name = name;
        this.age = age;
        this.salary = salary;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return this.age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Double getSalary() {
        return this.salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

}