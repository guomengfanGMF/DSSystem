<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2018/1/2
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>商品展示页</title>
    <style type="text/css">
        .body-top {
            position: fixed;
            top: 0px;
            width: 100%;
            background: rgba(255,255,255,0.93);
            box-shadow: 0 0 10px #cfd0cf;
            z-index: 999;
        }
        .body-top-center {
            width: 1200px;
            margin: 0 auto;
        }
        .menu {
            float: left;
        }
        .menu-ul {
            overflow: hidden;
            float: left;
            padding: 10px 0;
        }
        .menu-li {
            float: left;
            width: 100px;
            height: 40px;
            margin-right: 5px;
        }
        .menu-a {
            display: block;
            width: 100px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            font-size: 16px;
            -webkit-transition: all 0.5s ease;
            -moz-transition: all 0.5s ease;
            -o-transition: all 0.5s ease;
            -ms-transition: all 0.5s ease;
            transition: all 0.5s ease;
        }
        .carts{
            margin-top: 200px;width: 100%;text-align: center;
        }
        .carts button{
            margin: 10px;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-addShopping.js"></script>
    <script type="text/javascript">
        $(function(){
            $('.carts button').shoping({
                endElement:".menu-a",
                iconCSS:"",
                iconImg:"img/cart.png",
                endFunction:function(element){
                    $("#num").html(parseInt($("#num").html())+1);
                    console.log(element);
                    return false;
                }
            })
        });
    </script>
</head>
<body>

<div class="body-top">
    <div class="body-top-center">
        <div class="menu" style="margin-left: 925px;">
            <ul class="menu-ul">
                <li class="menu-li"><span class="menu-a" style="color: blue;">购物车（<span id="num" style="color: red;">0</span>）</span></li><br/>
                <li class="menu-li"><span class="menu-a" style="color: blue;"><a href="/jiesuan.jsp">结算</a></span></li>
            </ul>
        </div>
    </div>
</div>
<p class="carts">
    ${list}
    商品1：<button type="button">添加购物车</button>&nbsp;&nbsp;&nbsp;&nbsp;
    商品2：<button type="button">添加购物车</button>&nbsp;&nbsp;&nbsp;&nbsp;
</p>
</body>
</html>
