<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/28
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品明细表</title>
</head>
<body>
<strong>商品图片:</strong> <img src="${product.proSPurl}"><br/>
<strong>商品编码:</strong> ${product.proNum}
<form action="/savePdet" method="post" enctype="multipart/form-data">
    商品编码：<input type="text" name="pnum"><br/>
    商品描述：<input type="text" name="ddes"><br/>
    成本价格：<input type="text" name="chengben"><br/>
    售    价：<input type="text" name="shoujia"><br/>
    是否可用：<input type="checkbox" name="use"><br/>
    添加图片：<input type="file" name="durl"><br/>
    <input type="submit" value="添加">
    <input type="reset" value="重置">
</form>
</body>
</html>
