<%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2018/7/1
  Time: 下午6:35
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2018/6/25
  Time: 下午9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type='text/css' href="./static/css/bootstrap.min.css">
    <link rel="stylesheet" type='text/css' href="./static/css/animate.css">
    <link rel="stylesheet" type='text/css' href="./static/css/style.css">


    <!-- Modernizr JS -->
    <script src="./static/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="./static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="style-3">

<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Admin Login</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="AdminPage" class="fh5co-form animate-box" data-animate-effect="fadeInRight" method="post">
                <h2>Sign In</h2>
                <div class="form-group">
                    <label for="username" class="sr-only">Username</label>
                    <input type="text" class="form-control" id="username" name="adminName" placeholder="Name" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" class="form-control" id="password" name="passWord" placeholder="Password" autocomplete="off">
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
<script src="./static/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="./static/js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="./static/js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="./static/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="./static/js/main.js"></script>

</body>
</html>
