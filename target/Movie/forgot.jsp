<%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2018/6/25
  Time: 下午10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<% pageContext.setAttribute("ProPath",request.getContextPath());
%>
<html>
<head>
    <title>Forgot</title>
</head>
<body>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">




<!-- Facebook and Twitter integration -->
<meta property="og:title" content=""/>
<meta property="og:image" content=""/>
<meta property="og:url" content=""/>
<meta property="og:site_name" content=""/>
<meta property="og:description" content=""/>
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="${ProPath}/static/css/bootstrap.min.css">
<link rel="stylesheet" href="${ProPath}/static/css/animate.css">
<link rel="stylesheet" href="${ProPath}/static/css/style.css">

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
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="#" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
                <h2>Forgot Password</h2>
                <div class="form-group">
                    <div class="alert alert-success" role="alert">Your email has been sent.</div>
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Email" autocomplete="off">
                </div>
                <div class="form-group">
                    <p><a href="index.jsp">Sign In</a> or <a href="sign-up.jsp">Sign Up</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="Send Email" class="btn btn-primary">
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
</body>
</html>
