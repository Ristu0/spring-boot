package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("login")
    public String login(User user,String captcha, HttpSession session){
        String code = (String) session.getAttribute("code");
        if (captcha.equals(code)){
            Boolean login = userService.login(user);
            if (login){
                return "redirect:/person/emplist";
            }
        }
            return "redirect:/login.jsp";
    }

    @RequestMapping("regist")
    public String register(User user){
        int i = userService.insertUser(user);
        if (i==1){
            return "redirect:/login.jsp";
        }else {
            return "redirect:/regist.jsp";
        }
    }

}
