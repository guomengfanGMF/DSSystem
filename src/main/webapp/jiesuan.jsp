<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2018/1/2
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品结算页</title>
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
</head>
<body>
<!--顶部快捷菜单-->
<div class="shortcut_v2013 alink_v2013">
    <div class="w">
        <ul class="fl 1h">

            <li class="fl"><i class="shortcut_s"></i></li>
            <li class="fl"><div class="menu_hd">您好，欢迎来到一锅端！</div></li>

        </ul>
        <ul class="fr 1h">
            <li class="fl"><div class="menu_hd"><a href="#">我的订单</a></div></li>
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
<!--顶部快捷菜单-->

<!--顶部Logo及搜索-->
<div class="header_2013">
    <div class="w">
        <div class="logo_v2013">
            <a href="#">
                <img class="border_r" src="img/images/logo.jpg" width="120" height="50">
                <img src="img/images/slogan.jpg" width="170" height="50">
            </a>
        </div>
        <div class="header_searchbox">
            <form action="#">
                <input name="search" type="text" class="header_search_input" default_val="欢迎来到一锅端！" autocomplete="off" x-webkit-speech="" x-webkit-grammar="builtin:search" lang="zh">
                <button type="submit" class="header_search_btn">搜索</button>
            </form>
            <ul class="hot_word">
                <li><a class="red" href="#" target="_blank">礼品卡</a></li>
                <li><a target="_blank" href="#">百货五折</a></li>
                <li><a target="_blank" href="#">大闸蟹</a></li>
                <li><a target="_blank" href="#">年货</a></li>
                <li><a target="_blank" href="#">电子产品</a></li>
            </ul>
        </div>

    </div>
</div>
<!--顶部Logo及搜索-->

<!--收货地址body部分开始-->
<div class="border_top_cart">
    <script type="text/javascript">
        var checkoutConfig={
            addressMatch:'common',
            addressMatchVarName:'data',
            hasPresales:false,
            hasBigTv:false,
            hasAir:false,
            hasScales:false,
            hasGiftcard:false,
            totalPrice:244.00,
            postage:10,//运费
            postFree:true,//活动是否免邮了
            bcPrice:150,//计算界值
            activityDiscountMoney:0.00,//活动优惠
            showCouponBox:0,
            invoice:{
                NA:"0",
                personal:"1",
                company:"2",
                electronic:"4"
            }
        };
        var miniCartDisable=true;
    </script>

    <div class="container">
        <div class="checkout-box">
            <form  id="checkoutForm" action="#" method="post">
                <div class="checkout-box-bd">
                    <!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
                    <input type="hidden" name="Checkout[addressState]" id="addrState"   value="0">
                    <!-- 收货地址 -->
                    <div class="xm-box">
                        <div class="box-hd ">
                            <h2 class="title">收货地址</h2>
                            <!---->
                        </div>
                        <div class="box-bd">
                            <div class="clearfix xm-address-list" id="checkoutAddrList">
                                <dl class="item" >
                                    <dt>
                                        <strong class="itemConsignee">郭梦帆</strong>
                                        <span class="itemTag tag">家</span>
                                    </dt>
                                    <dd>
                                        <p class="tel itemTel">18131371651</p>
                                        <p class="itemRegion">河北省 石家庄市</p>
                                        <p class="itemStreet">民丰西苑82号202室(214045)</p>
                                        <span class="edit-btn J_editAddr">修改</span>
                                    </dd>
                                    <dd style="display:none">
                                        <input type="radio" name="Checkout[address]" class="addressId"  value="10140916720030323">
                                    </dd>
                                </dl>
                                <div class="item use-new-addr"  id="J_useNewAddr" data-state="off">
                                    <span class="iconfont icon-add"><img src="img/images/add_cart.png" /></span>
                                    使用新地址
                                </div>
                            </div>
                            <input type="hidden" name="newAddress[type]" id="newType" value="common">
                            <input type="hidden" name="newAddress[consignee]" id="newConsignee">
                            <input type="hidden" name="newAddress[province]" id="newProvince">
                            <input type="hidden" name="newAddress[city]" id="newCity">
                            <input type="hidden" name="newAddress[district]" id="newCounty">
                            <input type="hidden" name="newAddress[address]" id="newStreet">
                            <input type="hidden" name="newAddress[zipcode]" id="newZipcode">
                            <input type="hidden" name="newAddress[tel]" id="newTel">
                            <input type="hidden" name="newAddress[tag_name]" id="newTag">
                            <!--点击弹出新增/收货地址界面start-->

                            <div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
                        </div>                </div>
                    <!-- 收货地址 END-->

                    <!-- 支付方式 -->
                    <div class="xm-box">
                        <div class="box-hd ">
                            <h2 class="title">支付方式</h2>
                        </div>
                        <div class="box-bd">
                            <ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
                                <li class="item selected">
                                    <input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
                                    <p>
                                        在线支付                                <span></span>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- 支付方式 END-->

                    <div class="xm-box">
                        <div class="box-hd ">
                            <h2 class="title">配送方式</h2>
                        </div>
                        <div class="box-bd">
                            <ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
                                <li class="item selected">
                                    <input type="radio" data-price="0" name="Checkout[shipment_id]" checked="checked" value="1">
                                    <p>
                                        快递配送（免运费）                                <span></span>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- 配送方式 END-->                    <!-- 配送方式 END-->

                </div>
                <!-- 送货时间 -->
                <div class="xm-box">
                    <div class="box-hd">
                        <h2 class="title">送货时间</h2>
                    </div>
                    <div class="box-bd">
                        <ul class="checkout-option-list clearfix J_optionList">
                            <li class="item selected"><input type="radio" checked="checked" name="Checkout[best_time]" value="1"><p>不限送货时间<span>周一至周日</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="2"><p>工作日送货<span>周一至周五</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="3"><p>双休日、假日送货<span>周六至周日</span></p></li>                        </ul>
                    </div>
                </div>
                <!-- 送货时间 END-->
                <!-- 发票信息 -->
                <div id="checkoutInvoice">
                    <div class="xm-box">
                        <div class="box-hd">
                            <h2 class="title">发票信息</h2>
                        </div>
                        <div class="box-bd">
                            <ul class="checkout-option-list checkout-option-invoice clearfix J_optionList J_optionInvoice">
                                <li class="hide">
                                    电子个人发票4
                                </li>
                                <li class="item selected">
                                    <!--<label><input type="radio"  class="needInvoice" value="0" name="Checkout[invoice]">不开发票</label>-->
                                    <input type="radio"    checked="checked"  value="4" name="Checkout[invoice]">
                                    <p>电子发票（非纸质）</p>
                                </li>
                                <li class="item ">
                                    <input type="radio"   value="1" name="Checkout[invoice]">
                                    <p>普通发票（纸质）</p>
                                </li>
                            </ul>
                            <p id="eInvoiceTip" class="e-invoice-tip ">
                                电子发票是税务局认可的有效凭证，可作为售后维权凭据，不随商品寄送。开票后不可更换纸质发票，如需报销请选择普通发票。<a href="http://bbs.xiaomi.cn/thread-9285999-1-1.html" target="_blank">什么是电子发票？</a>
                            </p>
                            <div class="invoice-info nvoice-info-1" id="checkoutInvoiceElectronic" style="display:none;">

                                <p class="tip">电子发票目前仅对个人用户开具，不可用于单位报销 ，不随商品寄送</p>
                                <p>发票内容：购买商品明细</p>
                                <p>发票抬头：个人</p>
                                <p>
                                    <span class="hide"><input type="radio" value="4" name="Checkout[invoice_type]"   checked="checked"   id="electronicPersonal" class="invoiceType"></span>
                                <dl>
                                    <dt>什么是电子发票?</dt>
                                    <dd>&#903; 电子发票是纸质发票的映像，是税务局认可的有效凭证，与传统纸质发票具有同等法律效力，可作为售后维权凭据。</dd>
                                    <dd>&#903; 开具电子服务于个人，开票后不可更换纸质发票，不可用于单位报销。</dd>
                                    <dd>&#903; 您在订单详情的"发票信息"栏可查看、下载您的电子发票。<a href="http://bbs.xiaomi.cn/thread-9285999-1-1.html" target="_blank">什么是电子发票？</a></dd>
                                </dl>
                                </p>
                            </div>
                            <div class="invoice-info invoice-info-2" id="checkoutInvoiceDetail"  style="display:none;" >
                                <p>发票内容：购买商品明细</p>
                                <p>
                                    发票抬头：请确认单位名称正确,以免因名称错误耽搁您的报销。注：合约机话费仅能开个人发票
                                </p>
                                <ul class="type clearfix J_invoiceType">
                                    <li class="hide">
                                        <input type="radio" value="0" name="Checkout[invoice_type]" id="noNeedInvoice" >
                                    </li>
                                    <li class="">
                                        <input  class="invoiceType" type="radio" id="commonPersonal" name="Checkout[invoice_type]" value="1" >
                                        个人
                                    </li>
                                    <li class="">
                                        <input  class="invoiceType" type="radio" name="Checkout[invoice_type]" value="2" >
                                        单位
                                    </li>
                                </ul>
                                <div  id='CheckoutInvoiceTitle' class=" hide  invoice-title">
                                    <label for="Checkout[invoice_title]">单位名称：</label>
                                    <input name="Checkout[invoice_title]" type="text" maxlength="49" value="" class="input"> <span class="tip-msg J_tipMsg"></span>
                                </div>

                            </div>

                        </div>
                    </div>                </div>
                <!-- 发票信息 END-->
        </div>
        <div class="checkout-box-ft">
            <!-- 商品清单 -->
            <div id="checkoutGoodsList" class="checkout-goods-box">
                <div class="xm-box">
                    <div class="box-hd">
                        <h2 class="title">确认订单信息</h2>
                    </div>
                    <div class="box-bd">
                        <dl class="checkout-goods-list">
                            <dt class="clearfix">
                                <span class="col col-1">商品名称</span>
                                <span class="col col-2">购买价格</span>
                                <span class="col col-3">购买数量</span>
                                <span class="col col-4">小计（元）</span>
                            </dt>
                            <dd class="item clearfix">

                                <div class="item-row">
                                    <div class="col col-1">
                                        <div class="g-pic">
                                            <img src="img/images/7s.jpg"  width="40" height="40" />
                                        </div>
                                        <div class="g-info">
                                            <checkbox>
                                                <a href="#"> 华为畅享7s</a>
                                            </checkbox>
                                        </div>
                                    </div>

                                    <div class="col col-2">1499元</div>
                                    <div class="col col-3">1</div>
                                    <div class="col col-4">1499元</div>
                                </div>

                            </dd>
                            <dd class="item clearfix">
                                <div class="item-row">
                                    <div class="col col-1">
                                        <div class="g-pic">
                                            <img src="img/images/7s.jpg"  width="40" height="40" />
                                        </div>
                                        <div class="g-info">
                                            <a href="#">华为畅享7s</a>
                                        </div>
                                    </div>

                                    <div class="col col-2">1499元</div>
                                    <div class="col col-3">1</div>
                                    <div class="col col-4">1499元</div>
                                </div>
                            </dd>
                            <dd class="item clearfix">

                            </dd>
                        </dl>
                        <div class="checkout-count clearfix">
                            <div class="checkout-count-extend xm-add-buy">
                                <h2> class="title">会员留言</h2></br>
                                    <input type="text" />

                            </div>
                            <!-- checkout-count-extend -->
                            <div class="checkout-price">
                                <ul>

                                    <li>
                                        订单总额：<span>2998元</span>
                                    </li>
                                    <li>
                                        活动优惠：<span>-0元</span>
                                        <script type="text/javascript">
                                            checkoutConfig.activityDiscountMoney=0;
                                            checkoutConfig.totalPrice=2998.00;
                                        </script>
                                    </li>
                                    <li>
                                        优惠券抵扣：<span id="couponDesc">-0元</span>
                                    </li>
                                    <li>
                                        运费：<span id="postageDesc">0元</span>
                                    </li>
                                </ul>
                                <p class="checkout-total">应付总额：<span><strong id="totalPrice">2998</strong>元</span></p>
                            </div>
                            <!--  -->
                        </div>
                    </div>
                </div>

            </div>
            <!-- 商品清单 END -->
            <input type="hidden"  id="couponType" name="Checkout[couponsType]">
            <input type="hidden" id="couponValue" name="Checkout[couponsValue]">
            <div class="checkout-confirm">

                <a href="#" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
                <input type="submit" class="btn btn-primary" value="立即下单" id="checkoutToPay" />
            </div>
        </div>
    </div>

    </form>
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
