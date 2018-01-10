<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2018/1/7
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品页面</title>
    <!--设置了 口味和包装的样式-->
    <link type="text/css" href="css/optstyle.css" rel="stylesheet" />
    <!--设置了整个页面的样式-->
    <link type="text/css" href="css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/quick_links.js"></script>

    <!--图片的显示-->
    <script type="text/javascript" src="js/jquery.imagezoom.min.js"></script>
    <!--框的选择-->
    <script type="text/javascript" src="js/list.js"></script>

</head>

<body>

<div class="listMain">

    <script type="text/javascript">
        $(function() {});
        $(window).load(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                start: function(slider) {
                    $('body').removeClass('loading');
                }
            });
        });

        $(function () {
            $("#btn").click(function () {
                alert('测试：'+$("#name").val()+$("#miaoshu").val()+$("#danjia").val()+$("#text_box").val())
                var name=$("#name").val();
                var miaoshu= $("#miaoshu").val();
                var danjia=$("#danjia").val();
                var shuliang=$("#text_box").val();
                $.ajax({
                    url:"/addgwc?name=&miaoshu=&danjia=&text_box="+name+miaoshu+danjia+shuliang,
                    type:"post",
                    success:function () {

                    },
                    error:function () {

                    },
                })
            });
        })
    </script>

    <!--放大镜-->

    <div class="item-inform">
        <div class="clearfixLeft" id="clearcontent">

            <div class="box">
                <script type="text/javascript">
                    $(document).ready(function() {
                        $(".jqzoom").imagezoom();
                        $("#thumblist li a").click(function() {
                            $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
                            $(".jqzoom").attr('src', $(this).find("img").attr("mid"));
                            $(".jqzoom").attr('rel', $(this).find("img").attr("big"));
                        });
                    });
                </script>

                <div class="tb-booth tb-pic tb-s310">
                  <c:forEach items="${list}" var="list">
                        <a href="${list.dsurl}"><img src="${list.dsurl}" alt="细节展示放大镜特效" rel="${list.dsurl}" class="jqzoom" /></a>
                    </c:forEach>
                    <%--<a href="img/images/01.jpg"><img src="img/images/01_mid.jpg" alt="细节展示放大镜特效" rel="img/images/01.jpg" class="jqzoom" /></a>--%>
                </div>
                <ul class="tb-thumb" id="thumblist">
                    <c:forEach items="${list}" var="list">
                   <%-- <li class="tb-selected">--%>
                        <li>
                        <div class="tb-pic tb-s40">
                            <a href="#"><img src="${list.dsurl}" mid="${list.dsurl}" big="${list.dsurl}"></a>
                        </div>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clearfixRight">
            <!--规格属性-->
            <!--名称-->
            <div class="tb-detail-hd">
                <h1 id="name">
                    ${proname}
                    <input type="hidden" value="${proname}" name="name">
                </h1>
            </div>
            <div class="tb-detail-list">
                <!--价格-->
                <div class="tb-detail-price">
                    <li class="price iteminfo_price">
                        <dt>促销价</dt>
                        <c:forEach var="list" items="${list}">
                        <dd><em>¥</em><b class="sys_item_price" id="danjia">${list.shoujia}</b>  </dd>
                            <input type="hidden" value="${list.shoujia}" name="danjia">
                        </c:forEach>
                    </li>
                </div>
                <!--各种规格-->
                <dl class="iteminfo_parameter sys_item_specpara">
                    <dt class="theme-login"><div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div></dt>
                    <dd>
                        <!--操作页面-->
                        <div class="theme-popover-mask"></div>
                        <div class="theme-popover">
                            <div class="theme-popbod dform">
                                <!--表单-->
                                <form class="theme-signin" name="loginform" action="/addgwc?name=${proname}" method="post">

                                    <div class="theme-signin-left">
                                        <div class="clear"></div>
                                        <div class="theme-options">
                                            <div class="cart-title">规格</div>
                                            <ul>
                                                <c:forEach items="${list}" var="list">
                                                <li class="sku-line" id="miaoshu">${list.ddes}<i></i></li>
                                                    <input type="hidden" value="${list.ddes}" name="miaoshu">
                                                    <input type="hidden" value="${list.shoujia}" name="danjia">
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="theme-options">
                                            <div class="cart-title number">数量</div>
                    <dd>
                        <input id="min" class="am-btn am-btn-default" name="" type="button" value="-" />
                        <input id="text_box" name="shuliang" type="text" value="1" style="width:30px;" />
                        <input id="add" class="am-btn am-btn-default" name="" type="button" value="+" />
                    </dd>
            </div>
            <input type="submit" id="btn" value="加入购物车">
            <input type="button" id="btn2" value="立即购买">
        </div>
        </form>
    </div>
</div>
</dd>
</dl>
<div class="clear"></div>
<!--活动	-->
<div class="shopPromotion gold">
    <div class="hot">
        <dt class="tb-metatit">店铺优惠</dt>
        <div class="gold-list">
            <p>${proname}<span>点击领券<i class="am-icon-sort-down"></i></span></p>
        </div>
    </div>
    <div class="clear"></div>
    <div class="coupon">
        <dt class="tb-metatit">优惠券</dt>
        <div class="gold-list">
            <ul>
                <li>500减50</li>
                <li>900减90</li>
                <li>1500减150</li>
            </ul>
        </div>
    </div>
</div>
</div>

<%--<div class="pay">
    <div class="pay-opt">
        <a href="/show.jsp"><span class="am-icon-home am-icon-fw">首页</span></a>
        <a><span class="am-icon-heart am-icon-fw">收藏</span></a>
    </div>
    <li>
        <div class="clearfix tb-btn tb-btn-buy theme-login">
            <a id="LikBuy" title="点此按钮到下一步确认购买信息" href="#">立即购买</a>
        </div>
    </li>
    <li>
        <div class="clearfix tb-btn tb-btn-basket theme-login">
       <a id="LikBasket" title="加入购物车" href="#" onclick=""><i></i>加入购物车</a>
        </div>
    </li>
</div>--%>

</div>
</div>
<!-- introduce-->

<div class="introduce">
    <div class="introduceMain">
        <div class="am-tabs" data-am-tabs>
            <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active">
                    <a href="#">
                        <span class="index-needs-dt-txt">宝贝详情</span></a>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>
</body>

</html>
