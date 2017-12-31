<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/29
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
</head>
<body>
<fieldset>
    <legend>请填写个人信息</legend>
    <form action="/updateOne" method="post">

        密    码：<input type="text" name="password"><br/>
        会员生日:<input type="text" name="userBirth"><br/>
        邮    箱:<input type="text" name="userEmail"><br/>
        手 机 号:<input type="text" name="userPhone"><br/>
        <input type="submit" value="修改">
        <input type="reset" value="重填">
    </form>
    <a href="/logout">退出</a>
</fieldset>
</body>
</html>
