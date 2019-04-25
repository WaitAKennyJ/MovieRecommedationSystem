<%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2018/6/25
  Time: 下午10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Sign Up</title>
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

<link rel="stylesheet" href="static/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/animate.css">
<link rel="stylesheet" href="static/css/style.css">

<!-- Modernizr JS -->
<script src="static/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
<script src="static/js/respond.min.js"></script>
<![endif]-->

</head>
<body class="style-3">

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="signup.action" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
                <h2>Sign Up</h2>
                <%--<div class="form-group">--%>
                    <%--<div class="alert alert-success" role="alert">Your info has been saved.</div>--%>
                <%--</div>--%>
                <div class="form-group">
                    <label for="UserName" class="sr-only">SNO</label>
                    <input type="text" class="form-control" id="UserName" name="UserName" placeholder="UserName" autocomplete="off">
                </div>
                <%--<div class="form-group">--%>
                    <%--<label for="email" class="sr-only">Email</label>--%>
                    <%--<input type="email" class="form-control" id="email" name="Email" placeholder="Email" autocomplete="off">--%>
                <%--</div>--%>
                <div class="form-group">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" class="form-control" id="password" name="Pwd" placeholder="Password" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="re-password" class="sr-only">Re-type Password</label>
                    <input type="password" class="form-control" id="re-password" name="RePwd" placeholder="Re-type Password" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id ="remember"> Remember Me</label>
                </div>
                <div class="form-group">
                    <p>Already registered? <a href="index.jsp">Sign In</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="Sign Up" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->


        </div>
    </div>

</div>

<!-- jQuery -->
<script src="static/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="static/js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="static/js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="static/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="static/js/main.js"></script>

</body>
</html>

</html>
