<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/28
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品明细表</title>
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
<table>
    <tr>
        <th>ID</th>
        <th>商品描述</th>
        <th>成本价格</th>
        <th>销售价格</th>
        <th>创建时间</th>
        <th>商品明细图片</th>
    </tr>
    <c:forEach var="list" items="${list}">
        <tr>
            <td> ${list.id}</td>
            <td> ${list.ddes}</td>
            <td> ${list.chengben}</td>
            <td> ${list.shoujia}</td>
            <td> ${list.regdate}</td>
            <td><img src="${list.dsurl}"></td>
            <th><a href="/selPdturl?id=${list.id}">修改</a>|
                <a href="/deleteGoodsById.action?id=${list.id}">删除</a></th>
        </tr>
    </c:forEach>
</table>
</div>
</div>
</body>
</html>
