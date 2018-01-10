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
    <!--设置了整个的列表框架-->
    <link href="css/personal.css" rel="stylesheet" type="text/css">
</head>

<div class="center">
    <!--右侧start-->
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-orderinfo">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">添加商品种类</strong> / <small>OneSelf&nbsp;details</small></div>
                </div>
                <hr/>
                <fieldset>
                    <legend>商品分类表</legend>
                    <form action="/savePtype" method="post">
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
    </div>
    <!--右侧end-->
    <!--左侧菜单栏start-->
    <aside class="menu">
        <ul>
            <li class="person">
                <a href="myself.jsp">个人中心</a>
            </li>
            <li class="person">
                <a href="#">个人资料</a>
                <ul>
                    <li> <a href="/myself.jsp">个人基本信息</a></li>
                </ul>
            </li>
            <li class="person">
                <a  href="#">我要开店</a>
                <ul>
                    <li><a href="addPtype.jsp">添加商品种类</a></li>
                    <li> <a href="/selAllPtype">查看所有的商品分类</a></li>
                    <li> <a href="/addPro.jsp">添加商品</a></li>
                    <li> <a href="/selAllPro">查看所有商品</a></li>
                    <li> <a href="/selAllprodet">查看所有商品明细</a></li>

                </ul>
            </li>
            <li class="person">
                <a  href="#">收件地址管理</a>
                <ul>
                    <li> <a href="/selAddByunum">查看所有收件地址 </a></li>
                    <li> <a href="/addAdd.jsp">添加收件地址</a></li>
                </ul>
            </li>

            <li class="person">
                <a  href="#">个人银行卡信息</a>
                <ul>
                    <li> <a href="collection.html">查看银行卡</a></li>
                    <li> <a href="foot.html">添加银行卡</a></li>
                </ul>
            </li>
            <li class="person">
                <a class="active" href="#">积分与代金券</a>
                <ul>
                    <li> <a href="collection.html">积分</a></li>
                    <li> <a href="foot.html">代金券</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">订单信息</a>
                <ul>
                    <li> <a href="/selADingdan">所有订单</a></li>

                </ul>
            </li>
            <li class="person">
                <a href="#">个人商品评价</a>
                <ul>
                    <li> <a href="collection.html">已评价</a></li>
                    <li> <a href="foot.html">待评价</a></li>

                </ul>
            </li>

        </ul>
    </aside>
    <!--左侧菜单栏end-->
</div>

</body>
</html>
