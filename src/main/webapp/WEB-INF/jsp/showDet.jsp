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
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>商品描述</th>
        <th>成本价格</th>
        <th>销售价格</th>
        <th>创建时间</th>
    </tr>
    <c:forEach var="list" items="${list}">
        <tr>
            <td> ${list.id}</td>
            <td> ${list.ddes}</td>
            <td> ${list.chengben}</td>
            <td> ${list.shoujia}</td>
            <td> ${list.regdate}</td>
            <th><a href="/selPdturl?id=${list.id}">详情</a>|
                <a href="/deleteGoodsById.action?id=${list.id}">删除</a></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
