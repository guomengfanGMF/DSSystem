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
    <style type="text/css">
        #centerDiv{
            width: 100%;
            height: 100%;
            background-color:#00CCFF;
            padding-left:158px;
        }
        #form{
            width:80%;
            height:99%;
            margin:0 auto;
            _margin-left:20%;
        }
    </style>
</head>
<body>
<div id="centerDiv">
    <div id="form">
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
</body>
</html>
