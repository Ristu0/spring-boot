package com.baizhi.test;

import club.agtop.p2p.P2pApplication;
import club.agtop.p2p.entity.Admin;
import club.agtop.p2p.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = P2pApplication.class)
public class AdminTest {
    @Autowired
    private AdminService adminService;

    @Test
    public void addAdmin() {
        Admin admin = new Admin();
        admin.setUsername("xuwk");
        admin.setPassword("111111");
        admin.setPhoto("headPic");
        admin.setAddress("河南信阳");
        admin.setBirthday(new Date());
        admin.setJobtime(new Date());
        admin.setEmail("154159365@qq.com");
        admin.setRealname("许伟康");
        admin.setTel("15515548520");
        // adminService.insertNonEmptyAdmin(admin);
        List<Admin> admins = adminService.selectAdmin();
        System.out.println(admins);
    }

}
