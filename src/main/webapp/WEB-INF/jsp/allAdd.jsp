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
</head>
<body>
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
            <th>${list.privoce}</th>
            <th>${list.city}</th>
            <th>${list.detAddress}</th>
            <th>${list.moren}</th>
            <th>${list.use}</th>
            <th><a href="/updateAddByunum?unum=${list.userNum}">【修改】</a>|
                <a href="/delAddByunum?id=${list.id}">【删除】</a></th>
    </tr>
    </c:forEach><br/>
</table>
</body>
</html>
