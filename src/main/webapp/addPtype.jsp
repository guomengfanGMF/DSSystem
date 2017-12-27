<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/27
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品分类表</title>
</head>
<body>
<fieldset>
    <legend>商品分类表</legend>
    <form action="savePtype" method="post">
        类型名称：<input type="text" name="typeName"><br/>
        是否可用：<input type="text" name="use"><br/>
        创建时间：<input type="text" name="regDate"><br/>
        <input type="submit" value="添加">
        <input type="reset" value="重新添加">
    </form>
</fieldset>
</body>
</html>
