<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>浩茗金融</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tzgl.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.10.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/tzgl.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myAccount.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/myAccount.js"></script>
</head>
<body>
<%@include file="../common/view_head.jsp" %>
<!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部-->


<div class="middle">
    <div class="middle_content" id="content_right">

        <div class="content_left">


            <div class="content_photo">
                <div class="photo">
                    <img src="img/未标题-1.png"/>
                </div>
                <input type="file"/>
            </div>

            <div class="tel">
                <p class="p1">18817885258</p>
                <p class="p2">188***5258</p>
            </div>

            <div class="img_list" id="img_list">
                <div class="img1"></div>
                <div class="img2"></div>
                <div class="img3"></div>
            </div>


            <ul class="list_mi" id="list_mi">
                <li><a href="myAccount.jsp">我的账户</a></li>
                <li><a href="tzgl.jsp">投资管理</a></li>
                <li><a href="wyhk.jsp">我要还款</a></li>
                <li><a href="###">资金记录</a></li>

                <li class="pas"><a href="###">密码设置</a></li>
                <li class="ss"><a href="###">消息中心</a></li>
            </ul>


        </div>


        <!--右侧-->    <!--右侧-->    <!--右侧-->    <!--右侧-->    <!--右侧-->

        <div class="ddd">
            <div class="content_right">


                <div class="news">

                    <dl class="content_right_dl">
                        <dt>累计投资(元)</dt>
                        <dd>200000.00</dd>
                    </dl>
                    <!--
                    <dl class="content_right_dl">
                        <dt>投资中冻结金额(元)</dt>
                        <dd>0.00</dd>
                    </dl>-->
                    <dl class="content_right_dl2">
                        <dt>投标中(bi)</dt>
                        <dd>0</dd>
                    </dl>
                    <dl class="content_right_dl2">
                        <dt>还款中(笔)</dt>
                        <dd>1</dd>
                    </dl>
                    <!--
                    <dl class="content_right_dl2">
                        <dt>转让中(笔)</dt>
                        <dd>0</dd>
                    </dl>
                    -->
                </div>


                <div class="teble_tab">

                    <ul>
                        <li>投资中</li>
                        <li>还款中</li>
                        <li>已完成</li>
                        <li>转让中</li>
                    </ul>

                    <div class="content">
                        <div class="box0">
                            <table>
                                <tr>
                                    <th>项目名称</th>
                                    <th>应收日期</th>
                                    <th>借款者</th>
                                    <th>第几期/总期数</th>
                                    <th>应收金额</th>
                                    <th>应收利息</th>
                                    <th>状态</th>
                                </tr>
                                <tr>
                                    <td>测试20170517</td>
                                    <td>2018-05-17</td>
                                    <td>15937003594</td>
                                    <td>1/1</td>
                                    <td>110000</td>
                                    <td>10000</td>
                                    <td>还款中</td>
                                </tr>

                            </table>


                        </div>

                        <div class="box1"></div>
                        <div class="box2"></div>
                        <div class="box3"></div>
                    </div>


                </div>

                <div class="table_page">

                    <span>&lt;</span>
                    <span>1</span>
                    <span>&gt;</span>

                </div>


            </div>

        </div>

        <div style="width:100%;clear:both"></div>

    </div>
</div>

<%@include file="../common/view_footer.jsp" %>
</body>
</html>
