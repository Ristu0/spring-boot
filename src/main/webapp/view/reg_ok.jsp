<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>浩茗金融</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reg_ok.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.10.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/reg_ok.js"></script>
</head>
<body>
<%@include file="../common/view_head.jsp" %>

<!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部-->

<div class="reg_ok_mian">
    <div class="reg_ok_top"></div>
    <form action="" class="reg_login">
        <p>
            <label for="">真实姓名</label>
            <input type="text" placeholder="请填写真实姓名">
        </p>
        <p>
            <label for="">身份证号码</label>
            <input type="text" placeholder="请填写身份证号码">
        </p>
        <p>

            <a href="myAccount.jsp">提交</a>
            <span>跳过此步</span>
        </p>
    </form>
</div>


<%@include file="../common/view_footer.jsp" %>
</body>
</html>
