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
                    <a href="javascript:void(0)">用户管理</a>
                </li>
                <li>
                    <a href="role.jso">角色信息</a>
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
                                    角色信息管理
                                </div>


                                <!--权限弹出层-->
                                <div id="modal-role" class="modal fade in" style="display:none" tabindex="-1"
                                     aria-hidden="false">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header no-padding">
                                                <div class="table-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">
                                                        <span class="white">×</span>
                                                    </button>
                                                    分配权限
                                                </div>
                                            </div>

                                            <div class="modal-body no-padding">
                                                <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                                    <thead>
                                                    <tr>
                                                        <th class="center">
                                                            <label class="position-relative">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </th>
                                                        <th>权限名</th>
                                                        <th>权限描述</th>
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
                                                        <td>用户管理</td>
                                                        <td>管理前后台用户基本信息</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="center">
                                                            <label class="position-relative">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>
                                                        <td>借款管理</td>
                                                        <td>借款审核管理，负责审核借款信息</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="center">
                                                            <label class="position-relative">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>
                                                        <td>项目管理</td>
                                                        <td>查看发布项目的进度等信息</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="center">
                                                            <label class="position-relative">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>
                                                        <td>还款管理</td>
                                                        <td>查看用户还款等信息</td>
                                                    </tr>

                                                    <tr>
                                                        <td class="center">
                                                            <label class="position-relative">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"></span>
                                                            </label>
                                                        </td>
                                                        <td>统计管理</td>
                                                        <td>查看网站登录、注册、投资、借贷情况</td>
                                                    </tr>

                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="modal-footer no-margin-top">
                                                <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                                    <i class="ace-icon fa fa-times"></i>
                                                    关闭
                                                </button>

                                                <button class="btn btn-sm btn-success pull-left" data-dismiss="modal">
                                                    <i class="ace-icon fa fa-fire"></i>
                                                    分配角色
                                                </button>

                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
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
                                            <th>角色名</th>
                                            <th>角色描述</th>
                                            <th>是否启用</th>
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
                                            <td>项目审核管理角色</td>
                                            <td>项目审核管理角色，主要负责审核项目</td>
                                            <td>启用</td>

                                            <td>
                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <a class="btn btn-xs btn-success" href="#modal-role"
                                                       data-toggle="modal">
                                                        <i class="ace-icon fa  fa-check-square-o bigger-120">&nbsp;分配权限</i>
                                                    </a>
                                                </div>


                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <a class="btn btn-xs btn-danger">
                                                        <i class="ace-icon fa fa-trash-o bigger-120">&nbsp;禁用</i>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            <td>借款审核管理角色</td>
                                            <td>借款审核管理角色，主要负责审核借款信息</td>
                                            <td>启用</td>

                                            <td>
                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <a class="btn btn-xs btn-success" href="#modal-role"
                                                       data-toggle="modal">
                                                        <i class="ace-icon fa  fa-check-square-o bigger-120">&nbsp;分配权限</i>
                                                    </a>
                                                </div>

                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <a class="btn btn-xs btn-danger">
                                                        <i class="ace-icon fa fa-trash-o bigger-120">&nbsp;禁用</i>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td class="center">
                                                <label class="position-relative">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>
                                            <td>测试角色</td>
                                            <td>测试角色</td>
                                            <td>禁用</td>

                                            <td>
                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <a class="btn btn-xs btn-success" href="#modal-role"
                                                       data-toggle="modal">
                                                        <i class="ace-icon fa  fa-check-square-o bigger-120">&nbsp;分配权限</i>
                                                    </a>
                                                </div>
                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <a class="btn btn-xs btn-info">
                                                        <i class="ace-icon fa fa-pencil bigger-120">&nbsp;启用</i>
                                                    </a>
                                                </div>

                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>


                                    <!--分页开始-->
                                    <div class="modal-footer no-margin-top">
                                        <ul class="pagination pull-right no-margin">
                                            <li class="prev disabled">
                                                <a href="#">
                                                    <i class="ace-icon fa fa-angle-double-left"></i>
                                                </a>
                                            </li>

                                            <li class="active">
                                                <a href="#">1</a>
                                            </li>

                                            <li>
                                                <a href="#">2</a>
                                            </li>

                                            <li>
                                                <a href="#">3</a>
                                            </li>

                                            <li class="next">
                                                <a href="#">
                                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

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
