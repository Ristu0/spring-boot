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
                    <a href="javascript:void(0)">统计管理</a>
                </li>
                <li>
                    <a href="statistics_user.jsp">近一周用户使用信息</a>
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
                                    近一周用户使用信息管理
                                </div>

                                <!--显示近一周内容-->
                                <div id="container" style="max-width:100%;height:400px"></div>


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


<script src="${pageContext.request.contextPath}/js/highcharts.js"></script>
<script>
    Highcharts.chart('container', {
        title: {
            text: '近一周用户使用信息情况预览'
        },

        yAxis: {
            title: {
                text: '使用人数'
            }
        },
        xAxis: {
            categories: [
                "2018-07-01",
                "2018-07-02",
                "2018-07-03",
                "2018-07-04",
                "2018-07-05",
                "2018-07-06",
                "2018-07-07"
            ]
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },
        plotOptions: {
            series: {
                label: {
                    connectorAllowed: false
                }
            }
        },
        credits: {
            enabled: false
        },
        series: [{
            name: '注册',
            data: [120, 34, 234, 568, 345, 33, 561]
        }, {
            name: '登录',
            data: [167, 67, 334, 743, 435, 49, 764]
        }, {
            name: '投资',
            data: [13, 45, 23, 23, 56, 89, 32]
        }, {
            name: '贷款',
            data: [5, 11, 18, 34, 36, 26, 3]
        }]
    });
</script>
</body>
</html>
