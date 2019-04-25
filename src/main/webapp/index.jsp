<%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2018/6/25
  Time: 下午9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<% pageContext.setAttribute("ProPath",request.getContextPath());
%>
<html>
<head>
    <title>Login</title>
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type='text/css' href="${ProPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" type='text/css' href="${ProPath}/static/css/animate.css">
    <link rel="stylesheet" type='text/css' href="${ProPath}/static/css/style.css">


    <!-- Modernizr JS -->
    <script src="${ProPath}/static/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="${ProPath}/static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="style-3">

<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Movie Recommendation System</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="MoviePage" class="fh5co-form animate-box" data-animate-effect="fadeInRight" method="post">
                <h2>Sign In</h2>
                <div class="form-group">
                    <label for="username" class="sr-only">Username</label>
                    <input type="text" class="form-control" id="username" name="userName" placeholder="UserName" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" class="form-control" id="password" name="passWord" placeholder="Password" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id="remember"> Remember Me</label>
                </div>
                <div class="form-group">
                    <p>Not registered? <a href="sign-up.jsp">Sign Up</a> | <a> Forgot Password?</a>| <a href="admin.jsp">Admin Login</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="Sign In" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->


        </div>
    </div>
</div>

<!-- jQuery -->
<script src="${ProPath}/static/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${ProPath}/static/js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="${ProPath}/static/js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="${ProPath}/static/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="${ProPath}/static/js/main.js"></script>

</body>
</html>
