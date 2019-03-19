package club.agtop.p2p.controller;

import club.agtop.p2p.entity.Admin;
import club.agtop.p2p.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/login")
    public String login(Admin admin, HttpSession session) {
        Admin login = adminService.login(admin);
        if (login == null) {
            return "redirect:/admin/admin_login.jsp";
        }
        session.setAttribute("admin", login);
        return "admin/index";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/admin_login.jsp";
    }

    @RequestMapping("/addAdmin")
    public String addAdmin(Admin admin, MultipartFile headPic, HttpServletRequest request) {
        System.out.println(adminService);
        try {
            String filename = headPic.getOriginalFilename();
            String realFileName = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
            String realPath = request.getServletContext().getRealPath("/headPic");
            String savePath = realPath + "/" + realFileName;
            File file = new File(savePath);
            headPic.transferTo(file);
            admin.setPhoto("headPic/" + realFileName);
            admin.setPassword("111111");
            System.out.println(admin);
            adminService.insertAdmin(admin);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/admin/employeeList";
    }

    @RequestMapping("/employeeList")
    public String employeeList(HttpServletRequest request) {
        List<Admin> admins = adminService.selectAdmin();
        request.setAttribute("admins", admins);
        return "admin/employee";
    }

    @RequestMapping("/getById")
    @ResponseBody
    public Object getById(Integer id) {
        Admin admin = adminService.selectAdminById(id);
        return admin;
    }

    @RequestMapping("/editEmployee")
    public String editEmployee(Admin admin, MultipartFile headPic, HttpServletRequest request) {
        if (headPic.getOriginalFilename() != null && !headPic.getOriginalFilename().equals("")) {
            try {
                String filename = headPic.getOriginalFilename();
                String realFileName = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
                String realPath = request.getServletContext().getRealPath("/headPic");
                String savePath = realPath + "/" + realFileName;
                File file = new File(savePath);
                headPic.transferTo(file);
                admin.setPhoto("headPic/" + realFileName);
                adminService.updateNonEmptyAdminById(admin);
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            adminService.updateNonEmptyAdminById(admin);
        }
        return "redirect:/admin/employeeList";
    }

    @RequestMapping("/removeAdmin")
    public String removeAdmin(Integer id) {
        adminService.deleteAdminById(id);
        return "redirect:/admin/employeeList";
    }

    @RequestMapping("/showMe")
    public String showMe(Integer id, HttpServletRequest request) {
        Admin admin = adminService.selectAdminById(id);
        request.setAttribute("admin", admin);
        return "admin/personal";
    }

}
