$(function () {

    //已注册用户，直接跳转到登陆页面
    var login_btn = $('.reg_mian form.reg_login p span.login');

    login_btn.click(function () {
        location.href = "reg_ok.jsp";
    });


});
