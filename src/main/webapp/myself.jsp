<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/27
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人中心</title>
    <style type="text/css">
        #main{
            width:100%;
            height:100%;
            border:1px solid green;
            position:relative;
        }
        #float_div{
            position:absolute;
            width:30%;
            height:30%;
            border:1px solid red;
            right:0px;
            top:0px;
            z-index:100;
        }
        #topDiv{
            width:100%;
            height:56px;
            background:blue;
            position:absolute;
            top:0px;
            overflow:hidden;
        }
    </style>
</head>
<body>

<div>
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
<div>
<a href="/addPtype.jsp">我要开店</a><br/>
</div>
</body>
</html>
