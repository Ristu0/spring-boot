<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


        <div class="page-content">

            <div class="page-content-area">
                <div class="row">
                    <div class="col-xs-12">
                        <div id="user-profile-2" class="user-profile">
                            <div class="tabbable">
                                <ul class="nav nav-tabs padding-18">
                                    <li class="active">
                                        <a data-toggle="tab" href="#home">
                                            <i class="green icon-user bigger-120"></i>
                                            详细资料
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content no-border padding-24">
                                    <div id="home" class="tab-pane in active">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-3 center">
															<span class="profile-picture">
																<img class="editable img-responsive" alt="Alex's Avatar"
                                                                     id="avatar2"
                                                                     src="${pageContext.request.contextPath}/${requestScope.admin.photo}"/>
															</span>
                                                <div class="space space-4"></div>
                                            </div><!-- /span -->

                                            <div class="col-xs-12 col-sm-9">
                                                <h4 class="blue">
                                                    <span class="middle">${requestScope.admin.realname}</span>
                                                    <span class="label label-purple arrowed-in-right">
																	<i class="icon-circle smaller-80 align-middle"></i>
																	在线
																</span>
                                                </h4>

                                                <div class="profile-user-info">
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 用户名</div>

                                                        <div class="profile-info-value">
                                                            <span>${requestScope.admin.username}</span>
                                                        </div>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 地址</div>

                                                        <div class="profile-info-value">
                                                            <i class="icon-map-marker light-orange bigger-110"></i>
                                                            <span>${requestScope.admin.address}</span>
                                                        </div>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 出生年月</div>

                                                        <div class="profile-info-value">
                                                            <span><fmt:formatDate value="${requestScope.admin.birthday}"
                                                                                  pattern="yyyy年MM月dd日"/></span>
                                                        </div>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> 入职时间</div>

                                                        <div class="profile-info-value">
                                                            <span><fmt:formatDate value="${requestScope.admin.jobtime}"
                                                                                  pattern="yyyy年MM月dd日"/></span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="hr hr-8 dotted"></div>


                                            </div><!-- /span -->
                                        </div><!-- /row-fluid -->
                                    </div><!-- #home -->


                                </div>
                            </div>
                        </div>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content-area -->
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
