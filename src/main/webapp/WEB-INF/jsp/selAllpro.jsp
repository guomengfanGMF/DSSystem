<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/28
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品信息表</title>
    <link href="css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery.pagination.css" />
    <script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery.pagination.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: "微软雅黑";
            background: #eee;
        }

        button {
            display: inline-block;
            padding: 6px 12px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            border: 1px solid transparent;
            border-radius: 4px;
            border-color: #28a4c9;
            color: #fff;
            background-color: #5bc0de;
            margin: 20px 20px 0 0;
        }

        .box {
            width: 800px;
            margin: 100px auto 0;
            height: 34px;
        }

        .page {
            width: 600px;
        }

        .info {
            width: 200px;
            height: 34px;
            line-height: 34px;
        }

        .fl {
            float: left;
        }
    </style>
    <script>
        $(function() {
            $("#pagination1").pagination({
                currentPage: 1,
                totalPage: 12,
                callback: function(current) {
                    $("#current1").text(current)
                }
            });

        });
    </script>
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
                                <a href="/addPtype.jsp">添加商品种类</a>
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
                <th>商品编码</th>
                <th>商品名称</th>
                <th>商品简码</th>
                <th>商品类型ID</th>
                <th>供货商ID</th>
                <th>上架时间</th>
                <th>是否是赠品</th>
                <th>是否支持退换</th>
                <th>创建时间</th>
            </tr>
            <c:forEach var="list" items="${list}">
                <tr>
                    <td> ${list.id}</td>
                    <td> ${list.proNum}</td>
                    <td> ${list.proname}</td>
                    <td> ${list.proJianma}</td>
                    <td> ${list.proTypeID}</td>
                    <td> ${list.proSupperlierID}</td>
                    <td> ${list.proPutawaydate}</td>
                    <td> ${list.zengPing}</td>
                    <td> ${list.change}</td>
                    <td> ${list.regdate}</td>
                    <th><a href="/selProurl?id=${list.id}">详情</a>|
                        <a href="/deleteGoodsById.action?id=${list.id}">删除</a></th>
                </tr>
            </c:forEach>
        </table>
        <div class="box">
            <div id="pagination1" class="page fl"></div>
            <div class="info fl">
                <p>当前页数：<span id="current1">1</span></p>
            </div>
        </div>
</div>
</div>
</body>
</html>
