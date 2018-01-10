<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/29
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加地址</title>
    <!--设置了整个的列表框架-->
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        window.onload = function ajaxSend() {
            //		alert("asd");
            $.ajax({
                type : "post",// 指定是post还是get
                //data : "username=" + username + "&userpass=" + userpass,//发送到服务器的数据
                url : "/province",//发送请求的地址
                dataType : "json",
                error : function(err) {//如果确定能正确运行,可不写
                    alert(err.code);
                },
                success : ajaxSendCallBack
            })
        }
        function ajaxSendCallBack(data) {
            //alert(data[0].name);
            for ( var i = 0; i < data.length; i++) {
                var op = document.createElement("option");//创建一个指名名称元素
                op.value = data[i].name;//设置op的实际值为当前的省份名称
                var textNode = document.createTextNode(data[i].name);//创建文本节点
                op.appendChild(textNode);//把文本子节点添加到op元素中，指定其显示值

                document.getElementById("p").appendChild(op);
            }
        }
        $(function () {
            $("#p").change(function (res) {
                var provincename = $("#p").val();
                /* alert(provincename);*/
                $.ajax({
                    type : "post",// 指定是post还是get
                    //data : "provincename=" + provincename,//发送到服务器的数据
                    url : "/city?provincename="+provincename,//发送请求的地址
                    dataType : "json",
                    error : function(err) {
                        alert("-----");
                    },
                    success : ajaxSendCallBackcity
                })
            });
        });

        function ajaxSendCallBackcity(data) {
            //如果是jsonArray这样返回
            //alert(data[0].name);
            //返回json结果
            /*
                    把select中的所有option移除（除了请选择）
             */
            var citySelect = document.getElementById("c");
            // 获取其所有子元素
            var optionEleList = citySelect.getElementsByTagName("option");
            // 循环遍历每个option元素，然后在citySelect中移除
            while (optionEleList.length > 1) {//子元素的个数如果大于1就循环，等于1就不循环了！
                citySelect.removeChild(optionEleList[1]);//总是删除1下标，因为1删除了，2就变成1了！
            }

            for ( var i = 0; i < data.length; i++) {
                var op = document.createElement("option");//创建一个指名名称元素
                op.value = data[i].name;//设置op的实际值为当前的省份名称
                var textNode = document.createTextNode(data[i].name);//创建文本节点
                op.appendChild(textNode);//把文本子节点添加到op元素中，指定其显示值

                document.getElementById("c").appendChild(op);
            }
        }
        function a() {
            window.location.href="/selAPro";
        }
    </script>
    <link href="css/custom.css" rel="stylesheet">

</head>


<body>
<div class="center">

    <!--右侧start-->
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-orderinfo">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">添加地址</strong> / <small>OneSelf&nbsp;details</small></div>
                </div>
                <hr/>
                <form action="/addAddbyunum" method="post">
                    省：
                    <select name="province" id="p">
                        <option>===请选择省===</option>
                    </select>
                    市：
                    <select name="city" id="c">
                        <option>===请选择市===</option>
                    </select>
                    详细地址： <textarea  name="detAddress"></textarea><br/>
                    是否为默认地址：<input type="checkbox" name="moren"><br/>
                    是否可用：<input type="checkbox"name="use"><br/>
                    <input type="submit" value="添加">
                    <input type="reset" value="重置">
                </form>
                <button onclick="a()">退出</button>
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
