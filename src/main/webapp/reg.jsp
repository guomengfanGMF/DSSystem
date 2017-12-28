<%--
  Created by IntelliJ IDEA.
  User: 郭
  Date: 2017/12/26
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#but").click(function () {
                alert('but'+$("#name").val());
                $.ajax({
                    url:"/zh",
                    type:"post",
                    data:{"username":$("#name").val()},
                    error:function (res) {
                        alert("提交失败")
                    },
                    success:function (date) {
                        $("#ajaxDiv").html(date);
                        if(date=="已存在"){
                            //设置文本框不可填
                            alert("账户已存在")
                        }
                    }
                })
            });
        })
    </script>

</head>
<body>
<fieldset>
    <legend>请填写个人信息</legend>
    <form action="/reg" method="post">
        账号：<input type="text" name="username" id="name">
        <label id="info">*</label><br/>
        <div id="ajaxDiv"></div>
        密码：<input type="text" name="password"><br/>
        身份证号:<input type="text" name="userCardnum"><br/>
        会员生日:<input type="text" name="userBirth"><br/>
        真实姓名:<input type="text" name="userRealname"><br/>
        邮    箱:<input type="text" name="userEmail"><br/>
        手 机 号:<input type="text" name="userPhone"><br/>
        <input type="submit" value="注册" id="but">
        <input type="reset" value="重填">
    </form>
    <a href="/logout">退出</a>
</fieldset>
</body>
</html>
