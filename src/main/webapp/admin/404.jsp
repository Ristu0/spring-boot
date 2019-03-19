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
                    <a href="404.jsp">404</a>
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
												<i class="ace-icon fa fa-sitemap"></i>
												404
											</span>
                                    页面找不到
                                </h1>

                                <hr/>
                                <h3 class="lighter smaller">我们其实也很想帮您找到页面，但是我们也是无能为力了!</h3>

                                <div>
                                    <form class="form-search">
												<span class="input-icon align-middle">
													<i class="ace-icon fa fa-search"></i>

													<input type="text" class="search-query" placeholder="搜索一下帮助方法..."/>
												</span>
                                        <button class="btn btn-sm" type="button">走你!</button>
                                    </form>

                                    <div class="space"></div>
                                    <h4 class="smaller">你还可以尝试一下以下好玩的东西:</h4>

                                    <ul class="list-unstyled spaced inline bigger-110 margin-15">
                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right blue"></i>
                                            重新尝试刷新一下本页面
                                        </li>

                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right blue"></i>
                                            阅读帮助文档
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

                        <!-- /section:pages/error -->

                        <!-- PAGE CONTENT ENDS -->
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
