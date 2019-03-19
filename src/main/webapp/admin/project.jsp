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
                                            <th>所在地区</th>
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
                                        <tr>
                                            <td class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            <td><a href="project_detail.jsp">体验标</a></td>
                                            <td>wudang</td>
                                            <td>河南郑州</td>
                                            <td>￥1000000</td>
                                            <td>12月</td>
                                            <td><span class="label label-sm label-warning">信用</span></td>
                                            <td>贷款买车</td>
                                            <td>2018-07-09 15:12:23</td>
                                            <td>18%</td>

                                            <td>10%</td>
                                            <td>0天</td>
                                            <td>到期还本付息</td>
                                            <td>流标</td>
                                            <td>
                                                <a href="#"><span class="label label-inverse arrowed">撤标</span></a>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            <td><a href="project_detail.jsp">体验标1</a></td>
                                            <td>wudang</td>
                                            <td>河南郑州</td>
                                            <td>￥1000000</td>
                                            <td>12月</td>
                                            <td><span class="label label-sm label-warning">信用</span></td>
                                            <td>贷款买车</td>
                                            <td>2018-07-09 15:12:23</td>
                                            <td>28%</td>

                                            <td>10%</td>
                                            <td>3天</td>
                                            <td>到期还本付息</td>
                                            <td>投资中</td>
                                            <td>
                                                <a href="#"><span class="label label-inverse arrowed">撤标</span></a>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            <td><a href="project_detail.jsp">体验标2</a></td>
                                            <td>wudang</td>
                                            <td>河南郑州</td>
                                            <td>￥1000000</td>
                                            <td>12月</td>
                                            <td><span class="label label-sm label-warning">信用</span></td>
                                            <td>贷款买车</td>
                                            <td>2018-07-09 15:12:23</td>
                                            <td>100%</td>

                                            <td>10%</td>
                                            <td>3天</td>
                                            <td>到期还本付息</td>
                                            <td>已结束</td>
                                            <td>
                                                <a href="#"><span
                                                        class="label label-success arrowed-in arrowed-in-right">放款</span></a>
                                            </td>
                                        </tr>

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
