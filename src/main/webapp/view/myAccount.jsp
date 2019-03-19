<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>浩茗金融</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myAccount.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.10.2.js"></script>
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
                <p class="p2">410***321X</p>
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

        <div class="content_right">

            <div class="right_top">
                <div class="right_top_1">

                </div>
                <p>可用余额:¥1898980000.00</p>

                <p>累计收益:¥888865.00</p>

                <div class="cc">
                    <div class="cz">
                        充值
                    </div>
                    <p>昨日收益 <span>3.00</span></p>
                </div>
            </div>
            <!--
            <div class="right_2">
                <div class="right_2_1"></div>
                <p>代收本息<span>110000</span>.00元</p>
                <a href="###">查看投资中项目</a>


            </div>
            <div class="right_3">
                <div class="right_3_1"></div>
                <div class="right_3_2">
                    2008980.00
                </div>
                <p class="right_3_3">总资产</p>
                <div class="right_3_4">

                    代收本息<span>2016666</span>.67元

                    <p class="right_3_4_1">
                        冻结资金
                        <span>0</span>
                        .00元
                    </p>

                </div>

            </div>
            <div class="right_4">

            </div>
            -->
            <div class="right_5">
                <div class="right_5_1">
                    资金记录
                </div>

                <div class="right_5_2">
                    <ul>
                        <li>交易记录</li>
                        <li>交易类型</li>
                        <li>交易详情</li>
                        <li>金额</li>
                        <li>余额</li>
                    </ul>
                </div>
                <div class="right_5_3">
                    <ul>
                        <li>2017-15-18 09:56:46</li>
                        <li>用户回款</li>
                        <li>18817885259</li>
                        <li>+100000</li>
                        <li>1898980</li>
                    </ul>
                </div>
                <div class="right_5_3">
                    <ul>
                        <li>2017-15-18 09:56:46</li>
                        <li>资金冻结</li>
                        <li>18817885259</li>
                        <li>-542121</li>
                        <li>8989856</li>
                    </ul>
                </div>
                <div class="right_5_3">
                    <ul>
                        <li>2017-15-18 09:56:46</li>
                        <li>投标成功</li>
                        <li>18817885259</li>
                        <li>+111156</li>
                        <li>8888888</li>
                    </ul>
                </div>
                <div class="right_5_3">
                    <ul>
                        <li>2017-15-18 09:56:46</li>
                        <li>资金冻结</li>
                        <li>18817885259</li>
                        <li>-561614</li>
                        <li>2225655</li>
                    </ul>
                </div>

                <div class="right_5_3">
                    <ul>
                        <li>2017-15-18 09:56:46</li>
                        <li>借款手续费</li>
                        <li>18817885259</li>
                        <li>-100000</li>
                        <li>565461</li>
                    </ul>
                </div>

                <div class="right_5_3">
                    <ul>
                        <li>2017-15-18 09:56:46</li>
                        <li>借款成功</li>
                        <li>18817885259</li>
                        <li>+100000</li>
                        <li>1547544</li>
                    </ul>
                </div>

                <div class="right_zx">
                    <div class="zxx">


                        <span id="s1"><</span>
                        <div>1</div>
                        <span id="s2">></span>

                    </div>
                </div>

            </div>

        </div>
        <div class="div_box">
            2
        </div>
        <div class="div_box">
            3
        </div>
        <div class="div_box">
            4
        </div>
        <div class="div_box">
            5
        </div>


    </div>
</div>


<%@include file="../common/view_footer.jsp" %>
</body>
</html>
