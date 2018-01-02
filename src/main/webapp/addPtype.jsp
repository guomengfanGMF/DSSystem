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
    <link href="css/custom.css" rel="stylesheet">

</head>
<body>
<div id="wrapper">
    <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="/myself.jsp">个人基本信息</a>
                    </li>
                    <li>
                        <a href="#">我要开店</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/addPtype.jsp">添加商品种类</a>
                            </li>
                            <li>
                                <a href="/selAllPtype">查看所有的商品分类</a>
                            </li>
                            <li>
                                <a href="/addPro.jsp">添加商品</a>
                            </li>
                            <li>
                                <a href="/selAllPro">查看所有商品</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">收件地址管理</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/selAddByunum">查看所有收件地址</a>
                            </li>
                            <li>
                                <a href="/addAdd.jsp">添加收件地址</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">个人银行卡信息</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="inbox.html">查看已添加的银行卡</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">积分与代金券</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="forms.html">积分</a>
                            </li>
                            <li>
                                <a href="validation.html">代金券</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">订单信息</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="basic_tables.html">所有订单</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">个人商品评价</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="media.html">已评价</a>
                            </li>
                            <li>
                                <a href="login.html">待评价</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<div id="page-wrapper">
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
</div>
</div>
</body>
</html>
