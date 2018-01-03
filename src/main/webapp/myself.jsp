<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
<title>个人中心</title>

<link href="css/custom.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="/myself.jsp">个人基本信息</a>
                        </li>
                        <li>
                            <a href="#">我要开店</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="addPtype.jsp">添加商品种类</a>
                                </li>
                                <li>
                                    <a href="/selAllPtype">查看所有的商品分类</a>
                                </li>
                                <li>
                                    <a href="/addPro.jsp">添加商品</a>
                                </li>
                                <li>
                                    <a href="/selAllPro">查看所有商品</a>
                                </li>
                                <li>
                                    <a href="/selAllprodet">查看所有商品明细</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">收件地址管理</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/selAddByunum">查看所有收件地址</a>
                                </li>
                                <li>
                                    <a href="/addAdd.jsp">添加收件地址</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">个人银行卡信息</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="inbox.html">查看已添加的银行卡</a>
                                </li>
                            </ul>
                        </li>

                         <li>
                            <a href="#">积分与代金券</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="forms.html">积分</a>
                                </li>
                                <li>
                                    <a href="validation.html">代金券</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">订单信息</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="basic_tables.html">所有订单</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">个人商品评价</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="media.html">已评价</a>
                                </li>
                                <li>
                                    <a href="login.html">待评价</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="page-wrapper">
        <table border="2px" cellspacing="2px">
    <caption>个人基本信息</caption>
    <thead>
    <tr>
        <th>编号</th>
        <th>账号</th>
        <th>个人等级</th>
        <th>身份证号</th>
        <th>生日</th>
        <th>真实姓名</th>
        <th>注册日期</th>
        <th>积分</th>
        <th>余额</th>
        <th>注册邮箱</th>
        <th>消费总额</th>
        <th>联系电话</th>
        <th>默认收件地址</th>
    </tr>
    </thead>
            <tr>
                <th>${user.userNum}</th>
                <th>${user.username}</th>
                <th>${user.userType}</th>
                <th>${user.userCardnum}</th>
                <th>${user.userBirth}</th>
                <th>${user.userRealname}</th>
                <th>${user.userRegdate}</th>
                <th>${user.userCredits}</th>
                <th>${user.userBalance}</th>
                <th>${user.userEmail}</th>
                <th>${user.userTotalmoney}</th>
                <th>${user.userPhone}</th>
                <th>${user.mainAddressID}<a href="/selAddByunum?unum=${user.userNum}">【查看详情】</a></th>
                <th><a href="/updateOne.jsp">修改</a></th>
            </tr>
        </table>
   </div>
</div>
</body>

</html>
