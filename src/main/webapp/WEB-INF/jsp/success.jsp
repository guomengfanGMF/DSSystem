<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>成功提交订单</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"  />
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/checkOut.css" />
    <script type="text/javascript" src="js/jquery_cart.js"></script>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/unslider.min.js" ></script>
    <script type="text/javascript" src="js/index.js" ></script>
    <script type="text/javascript" src="js/base.min.js"></script>
    <script type="text/javascript" src="js/address_all.js"></script>
    <script type="text/javascript" src="js/checkout.min.js"></script>
    <!--成功提交订单-->
    <!--设置了去掉列表的点-->
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <!--设置了整个页面的框架-->
    <link href="css/sustyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--顶部快捷菜单start-->
<div class="shortcut_v2013 alink_v2013">
    <div class="w">
        <ul class="fl 1h">

            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><div class="menu_hd">您好，欢迎来到一锅端！</div></li>

        </ul>
        <ul class="fr 1h">
            <li class="fl"><div class="menu_hd"><a href="/selADingdan">我的订单</a></div></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><div class="menu_hd"><a href="#">我的宝贝</a></div></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><div class="menu_hd"><a href="#">服务中心</a></div></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl">
                <div class="menu">
                    <div class="menu_hd"><a href="#">网站导航</a><b><em></em></b></div>
                    <div class="menu_bd">
                        <ul>
                            <li><a href="#">网站导航</a></li>
                            <li><a href="#">网站导航</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
        <span class="clr"></span>
    </div>
</div>
<!--顶部快捷菜单end-->

<!--订单详情start-->
<div class="take-delivery">
    <div class="status">
        <h2>您已成功付款</h2>
        <div class="successInfo">
            <ul>
                <li>付款金额<em>¥${dingdan.jine}</em></li>
                <div class="user-info">
                    <p>收货人：${user.userRealname}</p>
                    <p>联系电话：${user.userPhone}</p>
                    <p>收货地址：${dingdan.address}</p>
                </div>
                请认真核对您的收货信息，如有错误请联系客服

            </ul>
            <div class="option">
                <span class="info">您可以</span>
                <a href="/order.jsp" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
                <a href="/jiaoyi.jsp" class="J_MakePoint">查看<span>交易详情</span></a>
            </div>
        </div>
    </div>
</div>
<!--订单详情end-->
</div>

<!-- 底部 -->
<div class="promise_box">
    <div class="w">
        <ul>
            <li><img src="img/images/promise_img01.jpg"><span>365天不打烊</span></li>
            <li><img src="img/images/promise_img02.jpg"><span>无理由退换货</span></li>
            <li><img src="img/images/promise_img03.jpg"><span>担保交易</span></li>
            <li><img src="img/images/promise_img04.jpg"><span>先行赔付</span></li>
            <li><img src="img/images/promise_img05.jpg"><span>支持定制</span></li>
        </ul>
    </div>
</div>
<div class="bottom-links">
    <ul class="clearfix cols">
        <li class="col">
            <div class="bottom-links-title">关于我们</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">招聘英才</a></li>
                <li><a href="#">公司简介</a></li>
                <li><a href="#">合作洽谈</a></li>
                <li><a href="#">联系我们</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">客服中心</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">收货地址</a></li>
                <li><a href="#">个人资料</a></li>
                <li><a href="#">修改密码</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">售后服务</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">退换货政策</a></li>
                <li><a href="#">退款说明</a></li>
                <li><a href="#">联系卖家</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">帮助中心</div>
            <ul class="clearfix bottom-links-items">
                <li><a href="#">FAQ</a></li>
                <li><a href="#">积分兑换</a></li>
                <li><a href="#">积分细则</a></li>
                <li><a href="#">已购商品</a></li>
            </ul>
        </li>
        <li class="col">
            <div class="bottom-links-title">关注我们</div>
            <ul class="clearfix bottom-links-items">
                <li><img src="img/images/icon_sina.png" /><a href="#">新浪微博</a></li>
                <li><img src="img/images/icon_tencent.png" /><a href="#">腾讯微博</a></li>
                <li><img src="img/images/icon_weixin.png" /><a href="#">官方微信</a></li>
            </ul>
        </li>

    </ul>
</div>
<div class="footer_v2013 bottom-about">
    <div class="w">
        <p class="foot_p1">
            <a href="#">首页</a>|<a href="#">招聘英才</a>|<a href="#">广告合作</a>|<a href="#">联系我们</a>|<a href="#">关于我们</a>
        </p>

    </div>

</div>

</body>
</html>
