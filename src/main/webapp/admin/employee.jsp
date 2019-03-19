<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>个人信息 - 金融P2P后台管理系统</title>
    <meta name="description" content="This is page-header (.page-header &gt; h1)"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <%@include file="../common/files.jsp" %>
    <script>
        function editAdmin() {
            var id = $(this).parent().parent().prev().prev().prev().prev().prev().prev().val();
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/admin/getById",
                data: "id=" + id,
                dataType: "json",
                success: function (r) {
                    $("#simg1").prop("src", "${pageContext.request.contextPath}/" + r.photo);
                    $("#edit_id").prop("value", r.id);
                    $("#form-field-11").prop("value", r.username);
                    $("#form-field-21").prop("value", r.realname);
                    $("#form-field-31").prop("value", r.tel);
                    $("#form-field-41").prop("value", r.email);
                    $("#form-field-51").prop("value", r.birthday);
                    $("#form-field-61").prop("value", r.jobtime);
                    $("#form-field-71").prop("value", r.address);

                }

            })
        }
    </script>
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
                    <a href="employee.jsp">后台用户信息</a>
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
                                    后台用户信息管理
                                </div>
                                <table width="100%" class="CSSearchTbl" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <a class="btn btn-primary" role="button" href="#modal-table"
                                               data-toggle="modal">
                                                <i class="ace-icon fa fa-pencil-square-o align-top bigger-125"></i>
                                                添加用户
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                                <%--	新增用户			--%>
                                <div id="modal-table" class="modal fade in" style="display:none" tabindex="-1"
                                     aria-hidden="false">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header no-padding">
                                                <div class="table-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">
                                                        <span class="white">×</span>
                                                    </button>
                                                    新增用户(默认密码111111)
                                                </div>
                                            </div>

                                            <div class="modal-body no-padding">
                                                <div class="img-show">
                                                    <img id="simg"
                                                         src="${pageContext.request.contextPath}/assets/avatars/profile-pic.jpg"
                                                         width="300px" height="300px"/>
                                                </div>

                                                <form class="form-horizontal" id="fm" role="form" method="post"
                                                      action="${pageContext.request.contextPath}/admin/addAdmin"
                                                      enctype="multipart/form-data">

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 账户名：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-1" placeholder="输入账户名"
                                                                   class="col-xs-10 col-sm-5" name="username"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 真实姓名：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-2" placeholder="输入真实姓名"
                                                                   class="col-xs-10 col-sm-5" name="realname"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 联系方式：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-3" placeholder="输入联系方式"
                                                                   class="col-xs-10 col-sm-5" name="tel"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 公司邮箱：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-4" placeholder="输入公司邮箱"
                                                                   class="col-xs-10 col-sm-5" name="email"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 出生日期：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-5" placeholder="输入出生日期"
                                                                   class="col-xs-10 col-sm-5" name="birthday"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 入职时间：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-6" placeholder="输入入职时间"
                                                                   class="col-xs-10 col-sm-5" name="jobtime"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 现居地址：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-7" placeholder="输入现居地址"
                                                                   class="col-xs-10 col-sm-5" name="address"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 用户头像：</label>
                                                        <div class="col-sm-9">
                                                            <input type="file" id="form-field-file" placeholder="上传用户头像"
                                                                   class="col-xs-10 col-sm-5" name="headPic"/>
                                                        </div>
                                                    </div>


                                                </form>
                                            </div>

                                            <div class="modal-footer no-margin-top">
                                                <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                                    <i class="ace-icon fa fa-times"></i>
                                                    关闭
                                                </button>

                                                <button class="btn btn-sm btn-success pull-left" data-dismiss="modal"
                                                        id="fm_sub">
                                                    <i class="ace-icon fa fa-fire"></i>
                                                    保存
                                                </button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div>


                                <%--修改用户--%>
                                <div id="modal-table1" class="modal fade in" style="display:none" tabindex="-1"
                                     aria-hidden="false">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header no-padding">
                                                <div class="table-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">
                                                        <span class="white">×</span>
                                                    </button>
                                                    修改用户
                                                </div>
                                            </div>

                                            <div class="modal-body no-padding">
                                                <div class="img-show">
                                                    <img id="simg1" src="" width="300px" height="300px"/>
                                                </div>

                                                <form class="form-horizontal" id="fm1" role="form" method="post"
                                                      action="${pageContext.request.contextPath}/admin/editEmployee"
                                                      enctype="multipart/form-data">
                                                    <input type="hidden" name="id" id="edit_id" value="">
                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-11"> 账户名：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-11" placeholder="输入账户名"
                                                                   class="col-xs-10 col-sm-5" name="username"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-21"> 真实姓名：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-21" placeholder="输入真实姓名"
                                                                   class="col-xs-10 col-sm-5" name="realname"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-31"> 联系方式：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-31" placeholder="输入联系方式"
                                                                   class="col-xs-10 col-sm-5" name="tel"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-41"> 公司邮箱：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-41" placeholder="输入公司邮箱"
                                                                   class="col-xs-10 col-sm-5" name="email"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-51"> 出生日期：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-51" placeholder="输入出生日期"
                                                                   class="col-xs-10 col-sm-5" name="birthday"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-61"> 入职时间：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-61" placeholder="输入入职时间"
                                                                   class="col-xs-10 col-sm-5" name="jobtime"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-71"> 现居地址：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="form-field-71" placeholder="输入现居地址"
                                                                   class="col-xs-10 col-sm-5" name="address"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label no-padding-right"
                                                               for="form-field-1"> 用户头像：</label>
                                                        <div class="col-sm-9">
                                                            <input type="file" id="form-field-file1"
                                                                   placeholder="上传用户头像" class="col-xs-10 col-sm-5"
                                                                   name="headPic"/>
                                                        </div>
                                                    </div>


                                                </form>
                                            </div>

                                            <div class="modal-footer no-margin-top">
                                                <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                                    <i class="ace-icon fa fa-times"></i>
                                                    关闭
                                                </button>

                                                <button class="btn btn-sm btn-success pull-left" data-dismiss="modal"
                                                        id="fm_sub1">
                                                    <i class="ace-icon fa fa-fire"></i>
                                                    保存
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
                                            <th>用户名</th>
                                            <th>姓名</th>
                                            <th>出生日期</th>
                                            <th>联系方式</th>
                                            <th>入职时间</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <s:forEach items="${requestScope.admins}" var="a" varStatus="vs">
                                            <tr>
                                                <td class="center">
                                                    <label class="position-relative">
                                                        <input type="checkbox" class="ace"/>
                                                        <span class="lbl"></span>
                                                    </label>
                                                </td>
                                                <input type="hidden" name="" value="${a.id}"/>
                                                <td>${a.username}</td>
                                                <td>${a.realname}</td>
                                                <td><fmt:formatDate value="${a.birthday}"
                                                                    pattern="yyyy年MM月dd日 HH时mm分ss秒"/></td>
                                                <td>${a.tel}</td>

                                                <td><fmt:formatDate value="${a.jobtime}"
                                                                    pattern="yyyy年MM月dd日 HH时mm分ss秒"/></td>
                                                <td class="op">
                                                    <div class="hidden-sm hidden-xs btn-group">
                                                        <a class="btn btn-xs btn-info" href="#modal-table1"
                                                           data-toggle="modal">
                                                            <i class="ace-icon fa fa-pencil bigger-120">&nbsp;编辑用户</i>
                                                        </a>
                                                    </div>

                                                    <div class="hidden-sm hidden-xs btn-group">
                                                        <a class="btn btn-xs btn-danger"
                                                           href="${pageContext.request.contextPath}/admin/removeAdmin?id=${a.id}">
                                                            <i class="ace-icon fa fa-trash-o bigger-120">&nbsp;删除用户</i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </s:forEach>
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
<script>
    $(function () {
        $("#form-field-file").change(function () {
            var file = this.files[0];
            var fr = new FileReader();
            fr.readAsDataURL(file);
            fr.onload = function () {
                $("#simg").attr('src', fr.result);
            }
        });
        $("#fm_sub").click(
            function () {
                $("#fm").submit()
            }
        );

        $("#form-field-file1").change(function () {
            var file = this.files[0];
            var fr = new FileReader();
            fr.readAsDataURL(file);
            fr.onload = function () {
                $("#simg1").attr('src', fr.result);
            }
        });
        $("#fm_sub1").click(
            function () {
                console.log(111)
                $("#fm1").submit()
            }
        );
        $(".op div:first a").click(editAdmin);

        $("#search_button").click(function () {
            var realname = $("#search_realname").val();
            var username = $("#search_username").val();
            location.href = "${pageContext.request.contextPath}/admin/search?realname=" + realname + "&username=" + username;
        });
    })
</script>
</body>
</html>
