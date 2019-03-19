<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>浩茗金融</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/loan.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.10.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/loan.js"></script>
</head>
<body>

<%@include file="../common/view_head.jsp" %>

<!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部--><!--中部-->

<div class="middle">


    <div class="middle_middle">


        <p class="title">个人借款</p>

        <div class="middle_x">
            <div class="middle_left">
						<span class="s1">
						金融P2P平台的借款功能旨在帮助借款用户以低成本获得借款。用户在需要资金时。可通过抵押、质押、信用、担保等借款方式申请借款，浩茗金融线下审核评估后，将会根据结款方式给出融资方案。
						</span>
                <img src="img/gz.jpg"/>
                <div class="kb"></div>
                <h3>申请条件:</h3>
                <p>1、年龄在22周岁（含）-55周岁（含）具有完全民事行为能力的自然人；</p>
                <p>2、中华人民共和国大陆人民，港、澳、台除外；</p>
                <p>3、具有稳定收入来源；</p>
                <p>4、在现在单位工作满6个月及以上（不包含试用期）。</p>
                <h1>申请材料：</h1>
                <p>1、二代身份证（需在有效期内，不认可护照、户口本、临时身份证等）；</p>
                <p>2、个人信用报告（进阶日期与信用报告开具日期应在15天内有效）；</p>
                <p>3、收入证明（发薪流水、税单等）；</p>
                <p>4、工作证明（劳动合同、工牌、单位开具的工作证明等）；</p>
                <p>5、居住证明（公用事业缴费单、户口薄、银行对账单等）；</p>
                <p>6、资产证明（房产证、车辆登记证、定期存款等、此项可选）。</p>

            </div>
            <div class="middle_right">
                <div class="right_jk">
                    填写借款申请
                </div>
                <span class="ss1">申请人：</span>
                <input type="text" value="18817885259"/>
                <span>手机号码</span>
                <input type="text" value="18817885259"/>
                <span>所在地区</span>
                <input type="text"/>
                <span>借款金额</span>
                <input class="i1" type="text"
                       placeholder="                                                                万"/>
                <span>借款期限</span>
                <input class="i1" type="text"
                       placeholder="                                                                月"/>
                <span>借款方式</span>
                <select>
                    <option value="-1">请选择</option>
                    <option value="信用">信用</option>
                    <option value="质押">质押</option>
                    <option value="抵押">抵押</option>
                    <option value="担保">担保</option>
                </select>

                <span>借款用途</span>
                <select>
                    <option value="-1">请选择用途</option>
                    <option value="1">短期周转</option>
                    <option value="2">生意周转</option>
                    <option value="3">生活周转</option>
                    <option value="4">购物消费</option>
                    <option value="5">不提现借款</option>
                    <option value="6">创业借款</option>
                    <option value="7">其他借款</option>
                </select>

                <span>验证码：</span>
                <input class="yzm"/>
                <img src="img/yzm.jpg"/>
                <a>换一张</a>
                <p>提交申请</p>
            </div>
        </div>

    </div>

</div>

<%@include file="../common/view_footer.jsp" %>

</body>
</html>
