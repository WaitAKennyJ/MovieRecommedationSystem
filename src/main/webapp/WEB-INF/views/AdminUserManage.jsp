<%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2019/4/22
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.wzj.model.Admin" %>
<%@ page import="com.wzj.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<% pageContext.setAttribute("ProPath", request.getContextPath());
%>
<% Admin admin = (Admin)request.getAttribute("admin"); %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>Movie Recommendation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${ProPath}/static/adminAssets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="${ProPath}/static/adminAssets/css/styles.css" rel="stylesheet">

</head>
<body>

<!-- AddModal -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add User</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputUserName" class="col-sm-2 control-label">UserName</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userName" id="inputUserName" placeholder="UserName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassWord" class="col-sm-2 control-label">PassWord</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="passWord" id="inputPassWord" placeholder="PassWord">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputGender" class="col-sm-2 control-label">Gender</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="gender" id="inputGender" placeholder="Gender">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAge" class="col-sm-2 control-label">Age</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="age" id="inputAge" placeholder="Age">
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="addSubmit">Submit</button>
            </div>
        </div>
    </div>
</div>


<!-- UpdateModal -->
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">Update User</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="updateUserName" class="col-sm-2 control-label">UserName</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userName" id="updateUserName" placeholder="UserName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="updatePassWord" class="col-sm-2 control-label">PassWord</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="passWord" id="updatePassWord" placeholder="PassWord">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="updateGender" class="col-sm-2 control-label">Gender</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="gender" id="updateGender" placeholder="Gender">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="updateAge" class="col-sm-2 control-label">Age</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="age" id="updateAge" placeholder="Age">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="updateSubmit">Update</button>
            </div>
        </div>
    </div>
</div>



<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <!-- Logo -->
                <div class="logo">
                    <h1><a href="#">Admin System</a></h1>
                </div>
            </div>
            <div class="col-md-5">
                <div class="row">
                    <div class="col-lg-12">

                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="navbar navbar-inverse" role="banner">
                    <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin <b class="caret"></b></a>
                                <ul class="dropdown-menu animated fadeInUp">
                                    <li><a href="index.jsp">Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <div class="row">
        <div class="col-md-2">
            <div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li class="current"><a href="${ProPath}/AdminPage?adminName=${admin.adminName}&passWord=${admin.passWord}"><i class="glyphicon glyphicon-home"></i> Admin Info</a></li>
                    <li class="submenu">
                        <a href="#">
                            <i class="glyphicon glyphicon-list"></i> Management
                            <span class="caret pull-right"></span>
                        </a>
                        <!-- Sub menu -->
                        <ul>
                            <li><a href="${ProPath}/AdminPage/Movie?adminName=${admin.adminName}&passWord=${admin.passWord}">Movie Management</a></li>
                            <li><a href="${ProPath}/AdminPage/User?adminName=${admin.adminName}&passWord=${admin.passWord}">User Management</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-12">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title"><h2>User Info</h2></div>


                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-4 col-md-offset-10">
                                        <button class="btn btn-info" id="admin_add_btn">新增</button>
                                        <%--<button class="btn btn-danger" id="admin_del_btn">删除</button>--%>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <table class="table table-hover" id="Table">
                                    <thead>
                                    <tr>
                                        <th class="col-md-1">#</th>
                                        <th class="col-md-2">UserName</th>
                                        <th class="col-md-2">PassWord</th>
                                        <th class="col-md-2">Age</th>
                                        <th class="col-md-4">Gender</th>
                                        <th class="col-md-4">Operator</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                                <div class="row"></div>
                                <!-- 分页条 -->
                                <div class="row">
                                    <!-- 文字信息 -->
                                    <div class="col-md-6" id="page_info">
                                    </div>
                                    <!-- 分页表 -->
                                    <div class="col-md-6">
                                        <div id="page_nav">

                                        </div>
                                    </div>
                                    <div class="col-md-3 col-md-offset-6">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="inputPageNum" placeholder="Page Number" aria-describedby="basic-addon2">
                                            <span class="input-group-addon" id="inputPageNumConfirm">Go!</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>


        </div>
    </div>
</div>


<script src="${ProPath}/static/js/jquery.js"></script>
<script src="${ProPath}/static/js/jquery.min.js"></script>
<script src="${ProPath}/static/js/respond.min.js"></script>
<script src="${ProPath}/static/adminAssets/bootstrap/js/bootstrap.min.js"></script>
<script src="${ProPath}/static/adminAssets/js/custom.js"></script>
<script>
    var totalRecord;
    var currentPage;
    $(function(){
        to_Page(1)
    });
    function to_Page(page){
        $.ajax({
            url:"${ProPath}/UserInfo",
            data:"page="+page,
            type:"GET",
            success:function(result){
                build_table(result);
                build_inf(result);
                build_nav(result);

            }
        });
    }
    //    解析表格
    function build_table(result){
        $("#Table tbody").empty();
        var admins = result.extend.pageInfo.list;
        $.each(admins,function(index,item){
            var countTD = $("<td></td>").append(item.userID);
            var nameTD = $("<td></td>").append(item.userName);
            var pwdTD = $("<td></td>").append(item.passWord);
            var ageTD = $("<td></td>").append(item.age);
            var genderTD = $("<td></td>").append((String)(item.gender)=='M'?'男':'女');
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                    .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");

//            添加一个自定义属性
            editBtn.attr("edit_id",item.userID);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm del_btn")
                    .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            var btnTD = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            $("<tr></tr>")
                    .append(countTD)
                    .append(nameTD)
                    .append(pwdTD)
                    .append(ageTD)
                    .append(genderTD)
                    .append(btnTD)
                    .appendTo("#Table tbody");
        });
    }
    //    解析分页信息

    function build_inf(result){
        $("#page_info").empty();
        $("#page_info").append("当前第"+result.extend.pageInfo.pageNum+"页,总"+result.extend.pageInfo.pages+"页,总"+result.extend.pageInfo.total+"条记录");
        totalRecord = result.extend.pageInfo.total;
        currentPage = result.extend.pageInfo.pageNum;
    }
    //    解析导航条
    function build_nav(result){

        $("#page_nav").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        var firstNav = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var preNav = $("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
        var nextNav = $("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
        var lastNav = $("<li></li>").append($("<a></a>").append("尾页").attr("href","#"));
//        判断能否点击
        if(result.extend.pageInfo.hasPreviousPage == false){
            firstNav.addClass("disabled");
            preNav.addClass("disabled");
        }
        if(result.extend.pageInfo.hasNextPage == false){
            lastNav.addClass("disabled");
            nextNav.addClass("disabled");
        }
        ul.append(firstNav).append(preNav);

        firstNav.click(function(){
            to_Page(1);
        });
        lastNav.click(function(){
            to_Page(result.extend.pageInfo.pages);
        });
        preNav.click(function(){
            to_Page(result.extend.pageInfo.pageNum -1);
        });
        nextNav.click(function(){
            to_Page(result.extend.pageInfo.pageNum +1);
        });
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){

            var numNav = $("<li></li>").append($("<a></a>").append(item).attr("href","#"));

            if(result.extend.pageInfo.pageNum == item) numNav.addClass("active");

//            跳转页面
            numNav.click(function(){
                to_Page(item)
            });
            ul.append(numNav);
        });

        ul.append(nextNav).append(lastNav);

        ul.appendTo("#page_nav");
    }


    //    新增按钮
    $("#admin_add_btn").click(function(){
        $("#addModal").modal({
            backdrop:"static"
        });
    });

    //    新增提交
    $("#addSubmit").click(function(){
        $.ajax({
            url:"${ProPath}/User",
            type:"POST",
            data:$("#addModal form").serialize(),
            success:function(result){
                alert("添加成功!");
                $("#addModal").modal('hide');

//                现实最后一页
                to_Page(totalRecord);
            },
            error:function(){
                alert("添加失败!");
            }

        })
    });


    //    编辑按钮

    $(document).on("click",".edit_btn",function(){
//        alert("edit");
//        alert($(this).attr("edit_id"));
        getAdmin($(this).attr("edit_id"));

        $("#updateSubmit").attr("edit_id",$(this).attr("edit_id"));


        $("#updateModal").modal({
            backdrop:"static"
        });
    });


    function getAdmin(adminName){
        $.ajax({
            url:"${ProPath}/User/"+adminName,
            type:"GET",
            success:function(result){
                var admin = result.extend.user;
                $("#updateUserName").val(admin.userName);
                $("#updatePassWord").val(admin.passWord);
                $("#updateAge").val(admin.age);
                $("#updateGender").val(admin.gender);

            }
        });
    }
    //  点击更新按钮
    $("#updateSubmit").click(function(){
        $.ajax({
            url:"${ProPath}/User/"+$(this).attr("edit_id"),
            type:"PUT",
            data:$("#updateModal form").serialize(),
            success:function(result){

                $("#updateModal").modal('hide');

                to_Page(currentPage);
            }
        });
    });



    //    删除按钮

    $(document).on("click",".del_btn",function(){
//        alert("edit");

//        弹出确认删除

//        alert($(this).parents("tr").find("td:eq(1)").text());


        var adminName = $(this).parents("tr").find("td:eq(1)").text();
        var movieID = $(this).parents("tr").find("td:eq(0)").text();
//        alert($(this).parents("tr").find("td:eq(0)").text());
        if(confirm("确认删除["+adminName+"]吗?")){
            $.ajax({
                url:"${ProPath}/User/"+movieID,
                type:"DELETE",
                success:function(result){
                    alert("删除成功!");
                    to_Page(currentPage);
                }
            });
        }
    });


    $("#inputPageNumConfirm").click(function(){
        var inputPageNum = $("#inputPageNum").val();
        to_Page(inputPageNum);
    });




</script>
</body>
</html>
