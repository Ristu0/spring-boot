<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

            </ul>
        </div>

        <div class="page-content">

            <div class="page-content-area">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-header">
                                    项目管理
                                </div>

                                <div class="table-responsive">
                                    <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </th>
                                            <th>项目名称</th>
                                            <th>申请人</th>
                                            <th>借款金额</th>
                                            <th>借款期限</th>
                                            <th>借款类型</th>
                                            <th>借款用途</th>
                                            <th>项目发布时间</th>

                                            <th>项目进度</th>

                                            <th>年利率</th>
                                            <th>剩余时间</th>
                                            <th>还款方式</th>
                                            <th>状态</th>

                                            <th>操作</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${requestScope.projects}" var="p">
                                            <tr>
                                                <td class="center">
                                                    <label class="position-relative">
                                                        <input type="checkbox" class="ace"/>
                                                        <span class="lbl"></span>
                                                    </label>
                                                </td>
                                                <td>
                                                    <a href="${pageContext.request.contextPath}/admin/projectDetail?id=${p.id}">${p.projectname}</a>
                                                </td>
                                                <td>${p.tel}</td>
                                                <td>￥${p.money}</td>
                                                <td>${p.loan}月</td>
                                                <td><span class="label label-sm label-warning">${p.loantype}</span></td>
                                                <td>${p.loanuse}</td>
                                                <td><fmt:formatDate value="${p.loantime}" pattern="yyyy年MM月dd日"/></td>
                                                <td>${p.paymoney/p.money*100}%</td>
                                                <td>${p.rate}%</td>
                                                <td>
                                                    <jsp:useBean id="now" class="java.util.Date" scope="page"/>
                                                    <fmt:formatDate value="${now}" type="date" var="nowdate"/>
                                                    <fmt:formatDate var="loandate" type="date" value="${p.loantime}"/>
                                                    <fmt:parseDate var="e" value="${nowdate}" pattern="yyyy-MM-dd"/>
                                                    <fmt:parseDate var="s" value="${loandate}" pattern="yyyy-MM-dd"/>
                                                    <fmt:formatNumber value="${(e.getTime()-s.getTime())/1000/60/60/24}"
                                                                      pattern="#0" var="num"/>
                                                    <c:if test="${7-num>0}">
                                                        ${num}天
                                                    </c:if>
                                                    <c:if test="${7-num<=0}">
                                                        0天
                                                    </c:if>
                                                </td>
                                                <c:if test="${p.repaytype==1}">
                                                    <td>到期还本付息</td>
                                                </c:if>
                                                <c:if test="${p.repaytype==2}">
                                                    <td>按月分期</td>
                                                </c:if>
                                                <c:if test="${p.repaytype==3}">
                                                    <td>先息后本</td>
                                                </c:if>
                                                <c:if test="${p.status==1}">
                                                    <td>筹资中</td>
                                                    <td>
                                                        <a href="${pageContext.request.contextPath}/admin/downProject?id=${p.id}"><span
                                                                class="label label-inverse arrowed">撤标</span></a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${p.status==2}">
                                                    <td>已流标</td>
                                                    <td>
                                                        <a href="#"><span class="label label-inverse arrowed">销毁</span></a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${p.status==3}">
                                                    <td>已完成</td>
                                                    <td>
                                                        <a href="#"><span
                                                                class="label label-success arrowed-in arrowed-in-right">放款</span></a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${p.status==4}">
                                                    <td>已销毁</td>
                                                </c:if>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>


                                </div>
                            </div>
                        </div>


                    </div><!-- /.col -->
                </div><!-- /.row -->
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
