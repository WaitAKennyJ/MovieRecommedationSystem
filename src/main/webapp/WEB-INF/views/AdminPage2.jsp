<%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2019/4/19
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<% pageContext.setAttribute("ProPath",request.getContextPath());
%>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="${ProPath}/static/assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="${ProPath}/static/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${ProPath}/static/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${ProPath}/static/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${ProPath}/static/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${ProPath}/static/assets/js/Lightweight-Chart/cssCharts.css">
</head>

<body>

<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="jsp/admin_home.jsp" class="navbar-brand waves-effect waves-dark"><i class="large material-icons">track_changes</i> <strong>Movie Admin</strong></a>

            <div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li><a class="dropdown-button waves-effect waves-dark" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>admin</b> <i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>
    </nav>
    <!-- Dropdown Structure -->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="${ProPath}/index.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
        </li>
    </ul>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a href="${ProPath}/AdminPage" class="waves-effect waves-dark"><i class="fa fa-dashboard"></i> AdminInfo</a>
                </li>
                <li>
                    <a class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> Management<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${ProPath}/AdminUser">User Management</a>
                        </li>
                        <li>
                            <a href="${ProPath}/AdminMovie">Movie Management</a>
                        </li>
                    </ul>
                </li>



            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <div class="header">


        </div>

        <div id="page-inner">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="text-center">
                                    <h2>Admin Info</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-4 col-md-offset-10">
                                    <button class="btn btn-primary" id="admin_add_btn" data-target="modal1">新增</button>
                                    <button class="btn btn-danger" id="admin_del_btn">删除</button>

                                </div>
                            </div>
                        </div>
                        <!-- 表格数据 -->
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover" id="Table">
                                    <thead>
                                    <tr>
                                        <th class="col-md-1">#</th>
                                        <th class="col-md-4">AdminName</th>
                                        <th class="col-md-4">PassWord</th>
                                        <th class="col-md-2">Operator</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>

                                </table>
                            </div>
                        </div>

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
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /. PAGE INNER  -->

    </div>
    <!-- /. PAGE WRAPPER  -->

</div>
<%--页面加载完成后拿到JSON--%>

<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="${ProPath}/static/js/jquery.js"></script>

<!-- Bootstrap Js -->
<script src="${ProPath}/static/assets/js/bootstrap.min.js"></script>

<script src="${ProPath}/static/assets/materialize/js/materialize.min.js"></script>

<!-- Metis Menu Js -->
<script src="${ProPath}/static/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="${ProPath}/static/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="${ProPath}/static/assets/js/morris/morris.js"></script>


<script src="${ProPath}/static/assets/js/easypiechart.js"></script>
<script src="${ProPath}/static/assets/js/easypiechart-data.js"></script>

<script src="${ProPath}/static/assets/js/Lightweight-Chart/jquery.chart.js"></script>

<!-- Custom Js -->
<script src="${ProPath}/static/assets/js/custom-scripts.js"></script>

<script type="text/javascript">
    $(function(){
        to_Page(1)
    });
    function to_Page(page){
        $.ajax({
            url:"${ProPath}/AdminInfo",
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
        var count = 1;
        $.each(admins,function(index,item){
            var countTD = $("<td></td>").append(count++);
            var adminIDTD = $("<td></td>").append(item.adminName);
            var passWordTD = $("<td></td>").append(item.passWord);
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm")
                    .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm")
                    .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            var btnTD = $("<td></td>").append(editBtn).append(" ").append(delBtn);
            $("<tr></tr>")
                    .append(countTD)
                    .append(adminIDTD)
                    .append(passWordTD)
                    .append(btnTD)
                    .appendTo("#Table tbody");
        });
    }
    //    解析分页信息

    function build_inf(result){
        $("#page_info").empty();
        $("#page_info").append("当前第"+result.extend.pageInfo.pageNum+"页,总"+result.extend.pageInfo.pages+"页,总"+result.extend.pageInfo.total+"条记录");
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
        $("#addModal").modal('show');
    });
</script>

</body>
</html>