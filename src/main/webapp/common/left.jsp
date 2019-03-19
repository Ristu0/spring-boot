<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/18
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="sidebar" class="sidebar responsive">


    <ul class="nav nav-list">
        <li class="active">
            <a href="../admin/index.jsp">
                <i class="menu-icon fa fa-tachometer"></i>
                <span class="menu-text">菜单列表 </span>
            </a>
            <b class="arrow"></b>
        </li>

        <li class="#">
            <a href="" class="dropdown-toggle">
                <i class="menu-icon fa fa-tag"></i>
                <span class="menu-text">用户管理 </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>
            <ul class="submenu">

                <li class="">
                    <a href="../admin/user.jsp">
                        <i class="menu-icon fa fa-caret-right"></i>
                        用户信息
                    </a>

                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/admin/employeeList">
                        <i class="menu-icon fa fa-caret-right"></i>
                        后台用户信息
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-desktop"></i>
                <span class="menu-text">借款管理</span>
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">

                <li class="">
                    <a href="../admin/uncheck_borrow.jsp">
                        <i class="menu-icon fa fa-caret-right"></i>
                        未审核借款
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="../admin/check_borrow.jsp">
                        <i class="menu-icon fa fa-caret-right"></i>
                        已审核借款
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="../admin/unpass_borrow.jsp">
                        <i class="menu-icon fa fa-caret-right"></i>
                        未通过借款
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        <!--  -->
        <li class="">
            <a href="../admin/project.jsp">
                <i class="menu-icon fa fa-list-alt"></i>
                <span class="menu-text">项目管理</span>
            </a>
            <b class="arrow"></b>

        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text">还款管理</span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>
            <ul class="submenu">

                <li class="">
                    <a href="../admin/unrepayment.jsp">
                        <i class="menu-icon fa fa-caret-right"></i>
                        未还款信息
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="../admin/repayment.jsp">
                        <i class="menu-icon fa fa-caret-right"></i>
                        已还款信息
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left"
           data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>

</div>
</body>
</html>
