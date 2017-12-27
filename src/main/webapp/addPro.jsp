<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加商品</title>
</head>
<body>
<fieldset>
    <legend>商品信息表</legend>
<form action="/addPro" method="post" enctype="multipart/form-data">
    商品名称：<input type="text" name="proname"><br/>
    商品简码：<input type="text" name="proJianma"><br/>
    上传图片：<input type="file" name="proPurl"><br/>
    上架时间：<input type="text"name="proPutawaydate"><br/>
    是否为赠品：<input type="text" name="zengPing"><br/>
    是否支持退换：<input type="text" name="change"><br/>
    <input type="submit" value="添加">
    <input type="reset" value="重新添加">
</form>
</fieldset>
</body>
</html>
