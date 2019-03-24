package club.agtop.p2p.controller;

import club.agtop.p2p.entity.User;
import club.agtop.p2p.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/userList")
    public String userList(HttpServletRequest request) {
        List<User> users = userService.selectUser();
        request.setAttribute("users", users);
        return "admin/user";
    }

    @RequestMapping("/removeUser")
    public String removeUser(Integer id) {
        userService.deleteUserById(id);
        return "admin/user";
    }
}
