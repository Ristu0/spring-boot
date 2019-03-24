<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>个人信息 - 金融P2P后台管理系统</title>
    <meta name="description" content="This is page-header (.page-header &gt; h1)"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <%@include file="../common/files.jsp" %>

</head>

<body class="no-skin">
<%@include file="../common/header.jsp" %>

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">

    <%@include file="../common/left.jsp" %>

    <div class="main-content">

        <div class="breadcrumbs" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="index.jsp">首页</a>
                </li>
                <li>
                    <a href="project.jsp">项目管理</a>
                </li>
                <li>
                    <a href="project_detail.jsp">项目详情</a>
                </li>
            </ul>
        </div>

        <div class="page-content">

            <div class="page-content-area">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="widget-box transparent invoice-box">
                            <div class="widget-header widget-header-large">
                                <h3 class="grey lighter pull-left position-relative">
                                    <i class="icon-leaf green"></i>
                                    项目投资详情
                                </h3>

                                <div class="widget-toolbar no-border invoice-info">
                                    <span class="invoice-info-label">项目编号:</span>
                                    <span class="red">#${requestScope.project.project.id}</span>

                                    <br/>
                                    <span class="invoice-info-label">项目发起时间:</span>
                                    <span class="blue"><fmt:formatDate value="${requestScope.project.project.loantime}"
                                                                       pattern="yyyy年MM月dd日"/></span>
                                </div>

                                <div class="widget-toolbar hidden-480">
                                    <a href="#">
                                        <i class="icon-print"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main padding-24">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="row">
                                                <div class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
                                                    <b>项目信息</b>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <ul class="list-unstyled spaced">
                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        项目名：${requestScope.project.project.projectname}
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        借款人：${requestScope.project.project.user.realname}
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        借款期限：${requestScope.project.project.loan}月
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        项目年率:${requestScope.project.project.rate}%

                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        项目状态：
                                                        <c:if test="${requestScope.project.project.status==1}">
                                                            筹资中
                                                        </c:if>
                                                        <c:if test="${requestScope.project.project.status==2}">
                                                            已流标
                                                        </c:if>
                                                        <c:if test="${requestScope.project.project.status==3}">
                                                            已完成
                                                        </c:if>
                                                        <c:if test="${requestScope.project.project.status==4}">
                                                            已销毁
                                                        </c:if>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- /span -->

                                        <div class="col-sm-6">
                                            <div class="row">
                                                <div class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
                                                    <b>借款人信息</b>
                                                </div>
                                            </div>

                                            <div>
                                                <ul class="list-unstyled  spaced">
                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        姓名：${requestScope.project.project.user.realname}
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        账户：${requestScope.project.project.user.tel}
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        手机号：${requestScope.project.project.user.tel}
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        身份号码：${requestScope.project.project.user.postcard}
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="space"></div>

                                    <div>
                                        <table class="table table-striped table-bordered">
                                            <thead>
                                            <tr>
                                                <th class="center">#</th>
                                                <th>投资人</th>
                                                <th class="hidden-xs">投资金额</th>
                                                <th class="hidden-480">投资时间</th>
                                            </tr>
                                            </thead>

                                            <tbody>
                                            <c:forEach items="${requestScope.project.repayDTOS}" var="r" varStatus="vs">
                                            <tr>
                                                <td class="center">${vs.count}</td>
                                                <td>
                                                        ${r.realname}
                                                </td>
                                                <td class="hidden-xs">
                                                    ￥${r.money}
                                                </td>
                                                <td class="hidden-480"><fmt:formatDate value="${r.repaytime}"
                                                                                       pattern="yyyy年MM月dd日"/></td>
                                            </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="hr hr8 hr-double hr-dotted"></div>

                                    <div class="row">
                                        <div class="col-sm-5 pull-right">
                                            <h4 class="pull-right">
                                                投资总额 :
                                                <span class="red">￥${requestScope.project.repaySum}</span>
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>


    <%@include file="../common/footer.jsp" %>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->


<script type="text/javascript" src='../assets/js/jquery.min.js'></script>

<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>

</body>
</html>
