<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/27
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>商品分类表</title>

</head>
<body>
<fieldset>
    <legend>商品分类表</legend>
    <form action="/savePtype" method="post">
        <%--类型名称：<input type="text" name="typeName"><br/>--%>
        类型名称：<select name="typeName">
                     <option value="手机/数码">手机/数码</option>
                     <option value="家具/家居">家具/家居</option>
                     <option value="服饰">服饰</option>
                 </select>
        是否可用：<input type="checkbox" name="use"><br/>
            供 应 商：
            <select name="sname">
                <option value="myself">myself</option>
                <option value="HUAWEI">HUAWEI</option>
                <option value="OPP0">OPPO</option>
                <option value="IPHONE">IPHONE</option>
            </select>
            注册公司：
            <select name="scommpany">
                <option value="myself">myself</option>
                <option value="HUAWEI">HUAWEI</option>
                <option value="OPP0">OPPO</option>
                <option value="IPHONE">IPHONE</option>
            </select>
            详细地址：<input type="text" name="saddress">
            <input type="submit" value="添加">
        <input type="reset" value="重新添加">
    </form>
</fieldset>
</body>
</html>
