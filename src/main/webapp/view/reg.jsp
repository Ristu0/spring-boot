<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>浩茗金融</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reg.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.10.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/reg.js"></script>
</head>
<body>

<%@include file="../common/view_head.jsp" %>

<!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部-->

<div class="reg_mian">
    <div class="reg_top"></div>
    <form action="" class="reg_login">
        <p>
            <label for="">手机号码</label>
            <input type="text" placeholder="手机号码">
            <span class="ok"></span>
        </p>
        <p>
            <label for="">密码</label>
            <input type="text" placeholder="6-16位数字和字符">
            <span class="ok"></span>
        </p>
        <p>
            <label for="">确认密码</label>
            <input type="text" placeholder="6-16位数字和字符">
            <span class="ok"></span>
        </p>
        <p class="yzm">
            <label for="">验证码</label>
            <input type="text">
            <span><img src="img/valid.jpg"/></span>
        </p>
        <p>
            <label for="">邀请人</label>
            <input type="text" placeholder="邀请码（非必填）">
        </p>
        <p class="agree">
            <input type="checkbox">我已阅读，并同意注册协议
        </p>
        <p>
            <a href="reg_ok.jsp">下一步</a>
            <span class="login">已有账户，登陆</span>
        </p>
    </form>
</div>


<%@include file="../common/view_footer.jsp" %>
</body>
</html>
