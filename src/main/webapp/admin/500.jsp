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
<%@include file="../common/files.jsp" %>

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
                    <a href="500.jsp">500</a>
                </li>

            </ul>
        </div>

        <div class="page-content">

            <div class="page-content-area">
                <div class="row">
                    <div class="col-xs-12">

                        <div class="error-container">
                            <div class="well">
                                <h1 class="grey lighter smaller">
											<span class="blue bigger-125">
												<i class="ace-icon fa fa-random"></i>
												500错误
											</span>
                                    页面上有错误
                                </h1>

                                <hr/>
                                <h3 class="lighter smaller">
                                    我们正在修复
                                    <i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
                                    中，请稍后!
                                </h3>

                                <div class="space"></div>

                                <div>
                                    <h4 class="lighter smaller">同时，你还可以尝试一下以下好玩的东西:</h4>

                                    <ul class="list-unstyled spaced inline bigger-110 margin-15">
                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right blue"></i>
                                            去帮助页面
                                        </li>

                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right blue"></i>
                                            联系我们
                                        </li>
                                    </ul>
                                </div>

                                <hr/>
                                <div class="space"></div>

                                <div class="center">
                                    <a href="javascript:history.back()" class="btn btn-grey">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        返回上一页
                                    </a>

                                    <a href="index.jsp" class="btn btn-primary">
                                        <i class="ace-icon fa fa-tachometer"></i>
                                        去主页
                                    </a>
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
    if ('ontouchstart' in document.documentElement) document.write("<script src='../assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery-ui.custom.min.js"></script>
<script src="../assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="../assets/js/ace-elements.min.js"></script>
<script src="../assets/js/ace.min.js"></script>

</body>
</html>
