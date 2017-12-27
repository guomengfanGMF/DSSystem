<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品展示页</title>
    <style type="text/css">
        #topDiv{
            width:100%;
            height:56px;
            background:blue;
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
    </style>
</head>
<body>
<div id="mainDiv">
    <div id="topDiv">
        <div id="tmenu"></div>
    </div>
    <div id="centerDiv">
        <div id="left">

        </div>
        <div id="right">

            </div>
        </div>
    </div>
</div>
</body>
</html>
