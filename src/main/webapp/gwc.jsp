<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2018/1/4
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>购物车</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/carts.css">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/carts.js"></script>
    <script type="text/javascript">
        function a() {
          /*  alert('测试'+$("#shoujia").val()+$("#shuliang").val()+$("#mingcheng").val());*/
            var jine=$("#jine").val();
            var shuliang=$("#shuliang").val();
            var mingcheng=$("#mingcheng").val();
            var danjia=$("#danjia").val();
            window.location.href="/jiesuan?jine=&shuliang=&danjia=&mingcheng="+jine+shuliang+mingcheng+danjia;
        }
    </script>
</head>
<body>
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label>
                全选
            </li>
            <li class="list_con">商品信息</li>
            <li class="list_info">商品参数</li>
            <li class="list_price">单价</li>
            <li class="list_amount">数量</li>
            <li class="list_sum">金额</li>
            <li class="list_op">操作</li>
        </ul>
    </div>
    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_a" class="shopChoice">
                <label for="shop_a" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：<a href="javascript:;">自营</a>
            </div>
        </div>

        <div class="order_content">
        <c:forEach items="${list}" var="list">
            <form action="/jiesuan" method="post">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_2" class="son_check">
                    <label for="checkbox_2"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="img/images/pro1.jpg" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">${list.name}</a></div>
                    <input type="hidden" id="mingcheng" name="mingcheng" value="${list.name}">
                </li>
                <li class="list_info">
                    <p>${list.miaoshu}</p>
                    <input type="hidden" value="${list.miaoshu}" name="miaoshu">
                </li>
                <li class="list_price">
                    <p class="price">${list.danjia}</p>
                    <input type="hidden" id="danjia" name="danjia" value="${list.danjia}">
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="${list.shuliang}" id="shuliang" name="shuliang" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">${lsit.danjia}</p>
                    <input type="hidden" id="jine" name="jine" style="outline: none" value="${list.danjia}">
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
                <input type="submit" class="calBtn" value="结算">
            </form>
        </c:forEach>
        </div>
    </div>
  <%-- <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text" name="zonge">0.00</strong></div>
          <div class="calBtn" id="btn" onclick="a()"><a href="#" onclick="a()">结算</a></div>
            <!--在结算的jsp页面拿到购物车页面的内容-->
        </div>
    </div>--%>
</section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>

</body>
</html>