<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<fieldset>
    <legend>请填写个人信息</legend>
    <form action="/reg" method="post">
    账号：<input type="text" name="username"><br/>
    密码：<input type="text" name="password"><br/>
    身份证号:<input type="text" name="userCardnum"><br/>
    会员生日:<input type="text" name="userBirth"><br/>
    真实姓名:<input type="text" name="userRealname"><br/>
    邮    箱:<input type="text" name="userEmail"><br/>
    手 机 号:<input type="text" name="userPhone"><br/>
    <input type="submit" value="注册">
    <input type="reset" value="重填">
    </form>
    <a href="/logout">退出</a>
</fieldset>
</body>
</html>