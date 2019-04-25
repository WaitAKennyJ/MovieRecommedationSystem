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
                    <a href="Action/adminStudent.action" class="waves-effect waves-dark"><i class="fa fa-dashboard"></i> AdminInfo</a>
                </li>
                <li>
                    <a class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> Management<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="">User Management</a>
                        </li>
                        <li>
                            <a href="jsp/admin_PManagement.jsp">Movie Management</a>
                        </li>
                    </ul>
                </li>



            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                Admin System
            </h1>
            <ol class="breadcrumb">
                <li class="active"><a href="#">Home</a></li>
            </ol>

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
                                    <button class="btn btn-primary">新增</button>
                                    <button class="btn btn-danger">删除</button>
                                </div>
                            </div>
                        </div>
                        <!-- 表格数据 -->
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover">
                                    <tr>
                                        <th class="col-md-1">#</th>
                                        <th class="col-md-4">AdminName</th>
                                        <th class="col-md-4">PassWord</th>
                                        <th class="col-md-2">Operator</th>
                                    </tr>

                                    <%--引入数据--%>
                                    <%int count =0;%>
                                    <c:forEach items="${pageInfo.list}" var="Admin">
                                        <tr>
                                            <th><%=++count%></th>
                                            <th>${Admin.getAdminName()}</th>
                                            <th>${Admin.getPassWord()}</th>

                                            <th>
                                                <button class="btn btn-primary btn-sm">
                                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                                    编辑
                                                </button>
                                                <button class="btn btn-danger btn-sm">
                                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                                    删除
                                                </button>
                                            </th>
                                        </tr>
                                    </c:forEach>

                                </table>
                            </div>
                        </div>

                        <div class="row"></div>
                        <!-- 分页条 -->
                        <div class="row">
                            <!-- 文字信息 -->
                            <div class="col-md-6">
                                当前第${pageInfo.pageNum}页,总${pageInfo.pages}页,总${pageInfo.total}条记录
                            </div>
                            <!-- 分页表 -->
                            <div class="col-md-6">
                                <div>

                                    <ul class="pagination">
                                        <li><a href="${ProPath}/AdminInf?page=1">首页</a></li>
                                        <li>
                                            <c:if test="${pageInfo.hasPreviousPage}">
                                                <a href="${ProPath}/AdminInf?${pageInfo.getPageNum()-1}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </c:if>

                                        </li>
                                       <c:forEach items="${pageInfo.navigatepageNums}" var="pageNumber">
                                           <c:if test="${pageNumber == pageInfo.getPageNum()}">
                                               <li class="active"><a>${pageNumber}</a></li>
                                           </c:if>
                                           <c:if test="${pageNumber != pageInfo.getPageNum()}">
                                               <li><a href="${ProPath}/AdminInf?page=${pageNumber}">${pageNumber}</a></li>
                                           </c:if>
                                       </c:forEach>
                                        <li>
                                            <c:if test="${pageInfo.hasNextPage}">
                                                <a href="${ProPath}/AdminInf?page=${pageInfo.getPageNum()+1}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </c:if>
                                        </li>
                                        <li><a href="${ProPath}/AdminInf?page=${pageInfo.getPages()}">末页</a></li>
                                    </ul>
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
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="${ProPath}/static/assets/js/jquery-1.10.2.js"></script>

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


</body>
</html>