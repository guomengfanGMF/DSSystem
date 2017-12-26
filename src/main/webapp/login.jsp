<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>欢迎登录</title>
</head>
<body>
<fieldset>
    <legend>个人信息</legend>
    <form action="/login" method="post">
    账号：<input type="text" name="username"><br/>
    密码：<input type="text" name="password"><br/>
    <input type="submit" value="登录">
    </form>
</fieldset>
</body>
</html>
