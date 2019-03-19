<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>浩茗金融</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reg_ok.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.10.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/reg_ok.js"></script>
</head>
<body>

<%@include file="../common/view_head.jsp" %>
<!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部-->

<div class="reg_ok_mian">
    <form action="" class="reg_login">
        <p>
            <label for="">用户名/手机号</label>
            <input type="text" placeholder="请填写用户名或手机号">
        </p>
        <p>
            <label for="">密码</label>
            <input type="password" placeholder="请填写密码">
        </p>
        <p>

            <a href="index.jsp">登录</a>
            <span>注册</span>
        </p>
    </form>
</div>


<%@include file="../common/view_footer.jsp" %>
</body>
</html>
