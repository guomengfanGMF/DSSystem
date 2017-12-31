<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        #topDiv{
            width:100%;
            height:56px;
            background:white;
            position:absolute;
            top:0px;
            overflow:hidden;
        }
        * {
            margin:0px;
            padding:0px;
        }
        html, body{
            height:100%;
            overflow: hidden;
        }
        html>body{
            width: auto;
            height: auto;
            position: absolute;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
        }
        body {
            border:8px solid #ffffff;
            background-color: #ffffff;min-width:230px;
        }
        #mainDiv {
            width: 100%;
            height: 100%;
            padding:60px 0px 25px 0px;;
        }
        #centerDiv{
            width: 100%;
            height: 100%;
            background-color:#00CCFF;
            padding-left:158px;
        }
        #mainDiv>#centerDiv{
            width: auto;
            height: auto;
            position: absolute;
            top: 56px;
            left: 0px;
            right: 0px;
            bottom: 20px;
        }
        #left{
            width:158px;
            height:100%;
            background:#00CCFF;
            position:absolute;
            left:0px;
        }
        #left2{
            width:158px;
            height:100%;
            background:#00CCFF;
            position:absolute;
            left:0px;
        }
        #right{
            width:100%;
            height:100%;
            background:#ffffff;
            position:absolute;
            overflow-y:auto;
            border:1px #003366 solid;
            padding:20px 0 0 10px;
            font-size:12px;
            font-family:"宋体";
        }

        #right2{
            width:100%;
            height:100%;
            background:#ffffff;
            position:absolute;
            overflow-y:auto;
            border:1px #003366 solid;
            padding:20px 0 0 10px;
            font-size:12px;
            font-family:"宋体";
        }

        #centerDiv>#right{
            width:auto;
            height:auto;
            position:absolute;
            top:0px;
            right:0px;
            left:158px;
            bottom:0px;
        }
        #tmenu{
            width:100%;
            position:absolute;
            left:12%;
            bottom:0;
            padding-left:15%;
            margin-left:-15%;
        }
        #left ul{
            list-style:none;
            font-size:12px;
            margin:50px 0 0 8px;
        }
        #form{
            width:80%;
            height:99%;
            margin:0 auto;
            _margin-left:20%;
        }
        #uu{ margin-left:50px}
        .l1{
            list-style-type:none; float:left; margin:5px; background-color:#CF3;}
        .aa{ background-color:#0FC; text-decoration:none}
        .aa:hover{ background-color:#C60}
        .l1 ul a{ text-decoration:none}
        .l1 li{list-style-type:none;}
        .l1 ul{ display:none; position:relative; left:-10px}
        #uu li:hover ul{ display:block}
    </style>
</head>
<body>
<div id="mainDiv">
    <div id="topDiv">
        <a href="/login.jsp">登录</a><br/>
        <a href="/reg.jsp">注册</a><br/>
        <div id="right2">
        </div>
        <div id="tmenu">
            <h3><a href="">秒杀</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="">优惠券</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="" >闪购</a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="">金融</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="">超市</a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="">全球购</a></h3>
        </div>
    </div>
    <div id="centerDiv">
        <div id="left">
            <ul id="uu">
                <li class="l1">

                    <a class="aa" href="#">手机/数码3C</a><br/>
                    <ul>
                        <li><a href="#">手机</a>
                        <li><a href="#">电脑</a>
                        <li><a href="#">数码</a>
                    </ul>

                <li class="l1">
                    <a class="aa" href="#">家具/家居</a><br/>
                    <ul>
                        <li><a href="#">家具</a>
                        <li><a href="#">家装</a>
                        <li><a href="#">厨具</a>
                    </ul>

                <li class="l1">
                    <a class="aa" href="#">服饰</a><br/>

                    <ul>
                        <li><a href="#">男装</a>
                        <li><a href="#">女装</a>
                        <li><a href="#">童装</a>
                    </ul>
            </ul>
        </div>
        <div id="right">

        </div>

    </div>
</div>
</div>
</body>
</html>
