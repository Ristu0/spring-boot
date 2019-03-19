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
                                    <span class="red">#121212</span>

                                    <br/>
                                    <span class="invoice-info-label">项目发起时间:</span>
                                    <span class="blue">2018/07/30</span>
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
                                                        项目名：体验标
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        借款人：王五
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        借款期限：12月
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        项目年率:10%

                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right blue"></i>
                                                        项目状态：进行中
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
                                                        姓名：王五
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        账户：wangwu
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        手机号：13569965866
                                                    </li>

                                                    <li>
                                                        <i class="icon-caret-right green"></i>
                                                        身份号码：441998556234545
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
                                            <tr>
                                                <td class="center">1</td>
                                                <td>
                                                    张三
                                                </td>
                                                <td class="hidden-xs">
                                                    ￥1000
                                                </td>
                                                <td class="hidden-480">2018-08-01 12:23:33</td>
                                            </tr>

                                            <tr>
                                                <td class="center">2</td>
                                                <td>
                                                    李四
                                                </td>
                                                <td class="hidden-xs">
                                                    ￥3000
                                                </td>
                                                <td class="hidden-480">2018-08-02 15:33:21</td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="hr hr8 hr-double hr-dotted"></div>

                                    <div class="row">
                                        <div class="col-sm-5 pull-right">
                                            <h4 class="pull-right">
                                                投资总额 :
                                                <span class="red">￥4000</span>
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
