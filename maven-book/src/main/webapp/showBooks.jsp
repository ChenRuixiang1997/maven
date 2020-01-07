<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/1/6
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有图书</title>
    <style type="text/css">
        span{
            color: blue;
        }
        span:hover{
            color: red;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $.getJSON("book/queryBooks",{},function (data) {
                var str = "";
                $(data).each(function () {
                    str += "<tr>"+
                        "<td>"+this.id+"</td>"+
                        "<td>"+this.name+"</td>"+
                        "<td>"+this.author+"</td>"+
                        "<td>"+this.publish+"</td>"+
                        "<td>"+this.publishdate+"</td>"+
                        "<td>"+this.page+"</td>"+
                        "<td>"+this.price+"</td>"+
                        "<td>"+this.content+"</td>"+
                        "<td>" +
                        "<button type=\"button\" class=\"btn btn-primary btn-sm\">" +
                        "<span class=\"glyphicon glyphicon-pencil\" aria-hidden=\"true\"></span>修改" +
                        "</button>&nbsp;&nbsp;"+
                        "<button type=\"button\" class=\"btn btn-danger btn-sm\">" +
                        "<span class=\"glyphicon glyphicon-trash\" aria-hidden=\"true\"></span>删除" +
                        "</button>"+
                        "</tr>";
                })
                $("tbody").append(str);
            })
        })
    </script>
</head>
<body>
<table class="table table-bordered table-hover" style="margin: auto;text-align: center" border="1">
    <thead>
    <tr>
        <td colspan="8"><h2>图书管理系统</h2></td>
        <td><span>增加</span></td>
    </tr>
    <tr>
        <th>编号</th>
        <th>书名</th>
        <th>作者</th>
        <th>出版社</th>
        <th>出版日期</th>
        <th>页数</th>
        <th>价格</th>
        <th>内容摘要</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody></tbody>
</table>
</body>
</html>
