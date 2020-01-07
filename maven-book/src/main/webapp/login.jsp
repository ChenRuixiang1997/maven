<%--
  Created by IntelliJ IDEA.
  User: jiang
  Date: 2019/10/24
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style type="text/css">
        #error {
            color: red;
        }
    </style>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("input[type=button]").click(function () {
                var username = $("input[type=text]").val();
                var password = $("input[type=password]").val();
                if (username == "") {
                    $("#error").html("用户名不能为空！");
                } else if (password == "") {
                    $("#error").html("密码不能为空！");
                } else {
                    $.ajax({
                        url: "UserController/login",
                        type: "post",
                        data: {"name": username, "password": password},
                        dataType: "json",
                        success: function (data) {
                            if (data) {
                                window.location.href = "showBooks.jsp";
                            } else {
                                $("#error").html("用户名或密码错误！");
                            }
                        }
                    })
                }
            });

            $(document).keydown(function (event) {
                if (event.keyCode == "13") {
                    $("input[type=button]").click();
                }
            });
        })

    </script>
</head>
<body>
<form>
    <table border="1px">
        <tr>
            <td colspan="2"><h3>登录图书管理系统</h3></td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="button" value="登录"/></td>
        </tr>
        <tr>
            <td colspan="2" id="error"></td>
        </tr>
    </table>
</form>
</body>
</html>
