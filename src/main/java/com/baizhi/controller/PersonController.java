package com.baizhi.controller;

import com.baizhi.entity.Person;
import com.baizhi.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/person")
public class PersonController {
    @Autowired
    private PersonService personService;

    @RequestMapping("emplist")
    public String emplist(HttpServletRequest request){
        List<Person> persons = personService.selectPerson();
        request.setAttribute("persons",persons);
        return "emplist";
    }

    @RequestMapping("addEmp")
    public String addEmp(Person person){
        personService.insertNonEmptyPerson(person);
        return "redirect:/person/emplist";
    }

    @RequestMapping("remove")
    public String remove(Integer id){
        personService.deletePersonById(id);
        return "redirect:/person/emplist";
    }

    @RequestMapping("getById")
    public String getById(Integer id,HttpServletRequest request){
        Person person = personService.selectPersonById(id);
        request.setAttribute("person",person);
        return "updateEmp";
    }
    @RequestMapping("modify")
    public String modify(Person person){
        personService.updateNonEmptyPersonById(person);
        return "redirect:/person/emplist";
    }
}
