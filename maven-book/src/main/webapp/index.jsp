<%--
  Created by IntelliJ IDEA.
  User: jiang
  Date: 2019/10/28
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var Page = "";
        var arr;
        $(function () {
            var currentPageNo;
            if(Page == ""){
                currentPageNo = 1;
            }else {
                currentPageNo = Page.pageNum;
            }
            var isLastPage = false;
            send(currentPageNo);
            $(".Next").click(function () {
                if(Page.isLastPage==false){
                    send(Page.pageNum+1);
                }
            })
            $(".Previous").click(function () {
                if (!Page.isFirstPage){
                    send(Page.pageNum-1);
                }
            })
            $(".Last").click(function () {
                send(Page.pages);
            })
            $(".First").click(function () {
                send(1);
            })
            $(".pan1").click(function () {
                send(arr[0]);
            })
            $(".pan2").click(function () {
                send(arr[1]);
            })
            $(".pan3").click(function () {
                send(arr[2]);
            })
            $(".pan4").click(function () {
                send(arr[3]);
            })
            $(".pan5").click(function () {
                send(arr[4]);
            })
            $(".pan6").click(function () {
                send(arr[5]);
            })
            $(".pan7").click(function () {
                send(arr[6]);
            })
            $(".pan8").click(function () {
                send(arr[7]);
            })
        })

        function send(pageNo) {
            $.getJSON("book/queryPage?pageNo="+pageNo,{}, function (page) {
                Page = eval(page);
                var str = "";
                $("input[type=hidden]").val(page.pageNum);
                var data = page.list;
                $("tbody").empty();
                $(data).each(function(){
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
                });
                $("tbody").append(str);
                arr = page.navigatepageNums;
                $(".pan1").html(arr[0]);
                $(".pan2").html(arr[1]);
                $(".pan3").html(arr[2]);
                $(".pan4").html(arr[3]);
                $(".pan5").html(arr[4]);
                $(".pan6").html(arr[5]);
                $(".pan7").html(arr[6]);
                $(".pan8").html(arr[7]);

            })
        }
    </script>
    <style type="text/css">
        .head{
            margin-top: 2%;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="row head">
            <div class="col-md-10">
                <h3>图书管理系统</h3>
            </div>
            <div class="col-md-2">
                <button type="button" class="btn btn-primary" aria-label="Left Align">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>增加
                </button>
            </div>
        </div>
        <div class="row">
            <table class="table table-bordered table-hover">
                <thead>
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
        </div>
        <div class="row">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li class="First">
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">首页</span>
                        </a>
                    </li>
                    <li class="Previous">
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">上一页</span>
                        </a>
                    </li>
                    <li ><a href="#" class="pan1"></a></li>
                    <li ><a href="#" class="pan2"></a></li>
                    <li ><a href="#" class="pan3"></a></li>
                    <li ><a href="#" class="pan4"></a></li>
                    <li ><a href="#" class="pan5"></a></li>
                    <li ><a href="#" class="pan6"></a></li>
                    <li ><a href="#" class="pan7"></a></li>
                    <li ><a href="#" class="pan8"></a></li>
                    <li class="Next">
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">下一页</span>
                        </a>
                    </li>
                    <li class="Last">
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">未页</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

</body>
</html>
