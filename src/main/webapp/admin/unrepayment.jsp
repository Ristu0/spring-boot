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
                    <a href="javascript:void(0)">还款管理</a>
                </li>
                <li>
                    <a href="unrepayment.jsp">未还款信息</a>
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
                                    未还款信息管理
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
                                            <th>借款人</th>
                                            <th>项目名</th>
                                            <th>联系方式</th>
                                            <th>借款金额</th>
                                            <th>借款期限</th>
                                            <th>借款方式</th>
                                            <th>借款用途</th>
                                            <th>借款时间</th>
                                            <th>本月应还金额</th>
                                            <th>还款状态</th>
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
                                            <td>体验标</td>
                                            <td><span class="label label-sm label-warning">13512345678</span></td>
                                            <td>￥1000000</td>
                                            <td>12月</td>
                                            <td><span class="label label-sm label-warning">信用</span></td>
                                            <td>贷款买车</td>
                                            <td>2018-07-01 13:32:21</td>

                                            <td>￥3012</td>
                                            <td>
															<span class="label label-sm label-warning">
																<i class="ace-icon fa fa-exclamation-triangle bigger-120">未还款</i>
															</span>
                                            </td>
                                            <td>
                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <a class="btn btn-xs arrowed">
                                                        <i class="ace-icon fa fa-users bigger-120">&nbsp;电话催款</i>
                                                    </a>

                                                    <a class="btn btn-xs btn-danger">
                                                        <i class="ace-icon fa fa-trash-o bigger-120">&nbsp;加入黑名单</i>
                                                    </a>
                                                </div>
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


<script type="text/javascript" src='${pageContext.request.contextPath}/assets/js/jquery.min.js'></script>

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
