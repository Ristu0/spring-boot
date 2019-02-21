package com.baizhi.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/captcha")
public class CaptchaController {
    @RequestMapping("getCaptcha")
    public void getCaptcha(HttpServletResponse response, HttpSession session) throws Exception{
        CircleCaptcha circleCaptcha = CaptchaUtil.createCircleCaptcha(150, 40, 4, 10);
        session.setAttribute("code",circleCaptcha.getCode());
        circleCaptcha.write(response.getOutputStream());
    }
}
