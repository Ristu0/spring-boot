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
                <div class="huankuan">
                    <p><span>你本月要还款<span>1000</span>元</span>&nbsp;&nbsp;
                        <input type="text"><span class="fk">还款</span></p>
                </div>


            </div>

        </div>

        <div style="width:100%;clear:both"></div>

    </div>
</div>
<%@include file="../common/view_footer.jsp" %>
</body>
</html>
