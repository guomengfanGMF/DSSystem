<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
<html>
<head>
    <title>添加商品</title>
  <%--  <script type="text/javascript">
        $(function () {
            $("#but").click(function () {
                alert('测试：'+$("#proType").val()+$("#supplier").val);

            });
        })
    </script>--%>
</head>
<body>
<fieldset>
    <legend>商品信息表</legend>
<form action="/addPro" method="post" enctype="multipart/form-data">
    商品名称：<input type="text" name="proname"><br/>
    商品简码：<input type="text" name="proJianma"><br/>
  <%--  商品类型：<select name="proType" id="proType">
                <option value="手机/数码">手机/数码</option>
                <option value="家具/家居">家具/家居</option>
                <option value="服饰">服饰</option>
             </select><br/>
    供 应 商：<select name="supplier" id="supplier">
             <option value="myself">myself</option>
             <option value="HUAWEI">HUAWEI</option>
             <option value="OPP0">OPPO</option>
             <option value="IPHONE">IPHONE</option>
             </select><br/>--%>
    上传图片：<input type="file" name="proPurl"><br/>
    上架时间：<input type="date"name="proPutawaydate"><br/>
    是否为赠品：<input type="text" name="zengPing"><br/>
    是否支持退换：<input type="text" name="change"><br/>
    <input type="submit" value="添加">
    <input type="reset" value="重新添加">
</form>
</fieldset>
</body>
</html>
