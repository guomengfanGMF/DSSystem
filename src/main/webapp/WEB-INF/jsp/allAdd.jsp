<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/29
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>显示所有地址</title>
    <!--设置了整个的列表框架-->
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        function a() {
            window.location.href="/selAPro";
        }
    </script>
    <link href="css/custom.css" rel="stylesheet">

</head>

<body>
<div class="center">

    <!--右侧start-->
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-orderinfo">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">添加地址</strong> / <small>Add&nbsp;address</small></div>
                </div>
                <hr/>
                <table>
                    <caption>显示所有地址</caption>
                    <th><a href="/addAdd.jsp">【添加地址】</a></th>
                    <tr>
                        <th>id</th>
                        <th>省</th>
                        <th>市</th>
                        <th>详细地址</th>
                        <th>是否为默认地址</th>
                        <th>是否可用</th>
                    </tr>
                    <c:forEach items="${list}" var="list">
                        <tr>
                            <th>${list.id}</th>
                            <th>${list.province}</th>
                            <th>${list.city}</th>
                            <th>${list.detAddress}</th>
                            <th>${list.moren}</th>
                            <th>${list.use}</th>
                            <th><a href="/updateAddByunum.jsp?id=${list.id}">【修改】</a>|
                                <a href="/delAddByunum?id=${list.id}">【删除】</a></th>
                        </tr>
                    </c:forEach><br/>
                </table>

                <button onclick="a()">退出</button>

            </div>

        </div>
    </div>
    <!--右侧end-->
    <!--左侧菜单栏start-->
    <aside class="menu">
        <ul>
            <li class="person">
                <a href="myself.jsp">个人中心</a>
            </li>
            <li class="person">
                <a href="#">个人资料</a>
                <ul>
                    <li> <a href="/myself.jsp">个人基本信息</a></li>
                </ul>
            </li>
            <li class="person">
                <a  href="#">我要开店</a>
                <ul>
                    <li><a href="addPtype.jsp">添加商品种类</a></li>
                    <li> <a href="/selAllPtype">查看所有的商品分类</a></li>
                    <li> <a href="/addPro.jsp">添加商品</a></li>
                    <li> <a href="/selAllPro">查看所有商品</a></li>
                    <li> <a href="/selAllprodet">查看所有商品明细</a></li>

                </ul>
            </li>
            <li class="person">
                <a  href="#">收件地址管理</a>
                <ul>
                    <li> <a href="/selAddByunum">查看所有收件地址 </a></li>
                    <li> <a href="/addAdd.jsp">添加收件地址</a></li>
                </ul>
            </li>

            <li class="person">
                <a  href="#">个人银行卡信息</a>
                <ul>
                    <li> <a href="collection.html">查看银行卡</a></li>
                    <li> <a href="foot.html">添加银行卡</a></li>
                </ul>
            </li>
            <li class="person">
                <a class="active" href="#">积分与代金券</a>
                <ul>
                    <li> <a href="collection.html">积分</a></li>
                    <li> <a href="foot.html">代金券</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">订单信息</a>
                <ul>
                    <li> <a href="/selADingdan">所有订单</a></li>

                </ul>
            </li>
            <li class="person">
                <a href="#">个人商品评价</a>
                <ul>
                    <li> <a href="collection.html">已评价</a></li>
                    <li> <a href="foot.html">待评价</a></li>

                </ul>
            </li>

        </ul>
    </aside>
    <!--左侧菜单栏end-->
</div>

</body>

</html>
