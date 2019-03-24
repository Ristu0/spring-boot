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
                <li>
                    <a href="generate_project.jsp">发布项目</a>
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
                                    发布项目
                                </div>


                                <form class="form-horizontal" role="form" method="post"
                                      action="${pageContext.request.contextPath}/admin/addProject" id="fm">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">
                                            项目名称：</label>
                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1" placeholder="输入项目名称" name="projectname"
                                                   class="col-xs-10 col-sm-5"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right"
                                               for="form-field-1-1">申请人： </label>
                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1-1" placeholder="输入申请人" name="tel"
                                                   class=" col-xs-10 col-sm-5"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-tags">信用类型</label>
                                        <div class="col-sm-2">
                                            <div class="pos-rel">
                                                <select class="form-control" id="form-field-select-1" name="loantype">
                                                    <option value="-1">请选择</option>
                                                    <option value="信用">信用</option>
                                                    <option value="质押">质押</option>
                                                    <option value="抵押">抵押</option>
                                                    <option value="担保">担保</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">贷款总额： </label>
                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1-1" placeholder="输入贷款总额" name="money"
                                                   class=" col-xs-10 col-sm-5"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right"
                                               for="form-field-1-1">年利率： </label>
                                        <div class="col-sm-9">
                                            <input type="text" id="form-field-1-1" placeholder="输入年利率" name="rate"
                                                   class=" col-xs-10 col-sm-5"/>%
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-tags">贷款期限</label>
                                        <div class="col-sm-2">
                                            <div class="pos-rel">
                                                <select class="form-control" id="form-field-select-1" name="loan">
                                                    <option value="-1">贷款期限</option>
                                                    <option value="1">1月</option>
                                                    <option value="2">2月</option>
                                                    <option value="3">3月</option>
                                                    <option value="4">4月</option>
                                                    <option value="5">5月</option>
                                                    <option value="6">6月</option>
                                                    <option value="7">7月</option>
                                                    <option value="8">8月</option>
                                                    <option value="9">9月</option>
                                                    <option value="10">10月</option>
                                                    <option value="11">11月</option>
                                                    <option value="12">12月</option>
                                                    <option value="24">24月</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-tags">贷款用途</label>
                                        <div class="col-sm-2">
                                            <div class="pos-rel">
                                                <select class="form-control" id="form-field-select-1" name="loanuse">
                                                    <option value="-1">请选择用途</option>
                                                    <option value="短期周转">短期周转</option>
                                                    <option value="生意周转">生意周转</option>
                                                    <option value="生活周转">生活周转</option>
                                                    <option value="购物消费">购物消费</option>
                                                    <option value="不提现借款">不提现借款</option>
                                                    <option value="创业借款">创业借款</option>
                                                    <option value="其他借款">其他借款</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-tags">最低投标金额</label>
                                        <div class="col-sm-2">
                                            <div class="pos-rel">
                                                <select class="form-control" id="form-field-select-1" name="minmoney">
                                                    <option value="-1">请选择最低投标金额</option>
                                                    <option value="1">1元</option>
                                                    <option value="50">50元</option>
                                                    <option value="100">100元</option>
                                                    <option value="150">150元</option>
                                                    <option value="200">200元</option>
                                                    <option value="300">300元</option>
                                                    <option value="500">500元</option>
                                                    <option value="1000">1000元</option>
                                                    <option value="1500">1500元</option>
                                                    <option value="3000">3000元</option>
                                                    <option value="5000">5000元</option>
                                                    <option value="10000">10000元</option>
                                                </select>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-tags">最高投标金额</label>
                                        <div class="col-sm-2">
                                            <div class="pos-rel">

                                                <select class="form-control" id="form-field-select-1" name="maxmoney">
                                                    <option value="-1">没有限制</option>
                                                    <option value="2000">2000元</option>
                                                    <option value="5000">5000元</option>
                                                    <option value="10000">10000元</option>
                                                    <option value="15000">15000元</option>
                                                    <option value="20000">20000元</option>
                                                    <option value="50000">50000元</option>
                                                    <option value="100000">100000元</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-tags">有效时间</label>
                                        <div class="col-sm-2">
                                            <div class="pos-rel">
                                                <select class="form-control" id="form-field-select-1" name="validtime">
                                                    <option value="-1">请选择有效时间</option>
                                                    <option value="1">1天</option>
                                                    <option value="2">2天</option>
                                                    <option value="3">3天</option>
                                                    <option value="4">4天</option>
                                                    <option value="5">5天</option>
                                                    <option value="6">6天</option>
                                                    <option value="7">7天</option>
                                                </select>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-tags">还款方式</label>
                                        <div class="col-sm-2">
                                            <div class="pos-rel">
                                                <select class="form-control" id="form-field-select-1" name="repaytype">
                                                    <option value="-1">请选择还款方式</option>
                                                    <option value="1">到期还本付息</option>
                                                    <option value="2">按月分期</option>
                                                    <option value="3">先息后本</option>
                                                </select>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfix form-actions">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button class="btn btn-info" type="button" id="sub_fm">
                                                <i class="ace-icon fa fa-check bigger-110"></i>
                                                立即提交
                                            </button>

                                            &nbsp; &nbsp; &nbsp;
                                            <button class="btn" type="reset">
                                                <i class="ace-icon fa fa-undo bigger-110"></i>
                                                重置
                                            </button>
                                        </div>
                                    </div>


                                </form>
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
        $("#sub_fm").click(function () {
            $("#fm").submit();
        });
    })
</script>

</body>
</html>
