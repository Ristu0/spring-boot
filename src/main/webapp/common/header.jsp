<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/18
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="navbar" class="navbar navbar-default">
    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="${pageContext.request.contextPath}/admin/index.jsp" class="navbar-brand">
                <small>
                    <img src="${pageContext.request.contextPath}/assets/avatars/logo.png" alt=""/>
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation" style="width: 200px;height: 50px">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="${pageContext.request.contextPath}/${sessionScope.admin.photo}"
                             alt="Jason's Photo"/>
                        <span class="user-info">
									欢迎您<br/>
									${sessionScope.admin.realname}
								</span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/showMe?id=${sessionScope.admin.id}">
                                <i class="ace-icon fa fa-user"></i>
                                查看个人信息
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/logout">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
