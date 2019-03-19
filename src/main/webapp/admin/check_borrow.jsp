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
                    <a href="javascript:void(0)">借款管理</a>
                </li>
                <li>
                    <a href="check_borrow.jsp">已审核借款</a>
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
                                    已审核借款管理
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
                                            <th>申请人</th>
                                            <th>手机号</th>
                                            <th>所在地区</th>
                                            <th>借款金额</th>
                                            <th>借款期限</th>
                                            <th>借款方式</th>
                                            <th>借款用途</th>
                                            <th>借款时间</th>
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
                                            <td>wudang</td>
                                            <td>13512345678</td>
                                            <td>河南郑州</td>
                                            <td>￥1000000</td>
                                            <td>12月</td>
                                            <td><span class="label label-sm label-warning">信用</span></td>
                                            <td>贷款买车</td>
                                            <td>2018-07-01 13:32:21</td>
                                            <td>
                                                <a href="generate_project.jsp"><span
                                                        class="label label-success arrowed-in arrowed-in-right">发布项目</span></a>
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
    if ('ontouchstart' in document.documentElement) document.write("<script src='../assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery-ui.custom.min.js"></script>
<script src="../assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="../assets/js/ace-elements.min.js"></script>
<script src="../assets/js/ace.min.js"></script>

</body>
</html>
