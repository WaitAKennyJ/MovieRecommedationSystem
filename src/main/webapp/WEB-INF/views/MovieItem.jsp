<%@ page import="com.wzj.model.User" %>
<%@ page import="com.wzj.model.Ratings" %>
<%@ page import="com.wzj.model.RatingsKey" %><%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2019/4/23
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<% pageContext.setAttribute("ProPath", request.getContextPath());
%>
<%  User user = (User)application.getAttribute("user");
    Integer movieID = (Integer) request.getAttribute("movieID");
    Integer userID = user.getUserID();
%>
<!DOCTYPE html>
<head>
    <title>Preview</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${ProPath}/static/itemAssets/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Bootstrap -->
    <link href="${ProPath}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="header">
    <div class="headertop_desc">
        <div class="wrap">
            <div class="nav_list">
                <ul>
                    <li>
                        <a href="#">Home</a>
                    </li>
                </ul>
            </div>
            <div class="account_desc">
                <ul>
                    <li>
                        <a href="index.jsp">Log out</a>
                    </li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="wrap">
        <div class="header_top">

            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="main">
    <div class="wrap">
        <div class="content_top">
            <div class="back-links">
                <h2>Movie Info</h2>
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group">
            <div class="cont-desc span_1_of_2">
                <div class="product-details">
                    <div class="grid images_3_of_2">
                        <img alt="No Image" width="300" height="400" id="itemImage"/>
                    </div>
                    <div class="desc span_3_of_2">
                        <h2 id="title">
                        </h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                            tempor incididunt ut labore.</p>
                        <div class="price">
                            <p>Your Score:
                                <span id="scoreSpan"></span></p>
                        </div>
                        <div class="available">
                            <ul>

                                <li> <span>publishYear:</span>
                                    &nbsp; <span id="publishYear"></span>
                                </li>
                                <li><span>Genres:</span>&nbsp; <span id="genres"></span></li>

                            </ul>

                        </div>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-danger score_btn" value="1">1</button>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <button type="button" class="btn btn-info score_btn" value="2">2</button>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <button type="button" class="btn btn-info score_btn" value="3">3</button>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <button type="button" class="btn btn-info score_btn" value="4">4</button>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <button type="button" class="btn btn-danger score_btn" value="5">5</button>
                        </div>
                        <div class="wish-list">
                            <ul>
                                <li class="wish">
                                    <a href="#">Add to Favourties</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="product_desc">
                    <h2>Details :</h2>
                    <p>No Details Now</p>
                </div>
            </div>

        </div>
    </div>
</div>


<script src="${ProPath}/static/js/jquery.js"></script>
<script src="${ProPath}/static/js/jquery.min.js"></script>
<script src="${ProPath}/static/js/respond.min.js"></script>
<script src="${ProPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ProPath}/static/itemAssets/js/move-top.js"></script>
<script type="text/javascript" src="${ProPath}/static/itemAssets/js/easing.js"></script>
<script type="text/javascript">
//    var userID;
    var rating;
    $(function(){
//        userInfo()
        movieInfo()
        ratingInfo()
    });
    function ratingInfo(){
        $.ajax({
            url:"${ProPath}/Rating/",
            data:{
                'userID': <%=userID%>,
                'movieID': <%=movieID%>},
            type:"GET",
            success:function(result){
                rating = result.extend.rating.rating
                $("#scoreSpan").html(rating)
//                alert(result.msg);
            }
        });
    }

    function movieInfo(){
        $.ajax({
            url:"${ProPath}/Movie/"+<%=movieID%>,
            type:"GET",
            success:function(result){
                var movie = result.extend.movie
                $("#itemImage").attr("src","${ProPath}/static/movie_image/"+movie.title+" .jpg")
                $("#title").html(movie.title)
                $("#publishYear").html(movie.publishYear)
                $("#genres").html(movie.genres)
            }
        });
    }
    <%--function userInfo(){--%>
        <%--$.ajax({--%>
            <%--url:"${ProPath}/UserByName",--%>
            <%--data:{--%>
                <%--'userName': '<%=user.getUserName()%>',--%>
                <%--},--%>
            <%--type:"GET",--%>
            <%--success:function(result){--%>
                <%--userID = result.extend.user.userID;--%>
<%--//                alert(result.msg)--%>

            <%--}--%>
        <%--});--%>
    <%--}--%>

    $(".score_btn").click(function(){
//        alert($(this).attr("value"))

        var buttonRating = $(this).attr("value");
        if (rating != null) updateRating(buttonRating);
        else insertRating(buttonRating);


    });

//    $("#score_btn1").click(function(){
//        alert("buttn");
//    });

    function insertRating(Rating){
        $.ajax({
            url:"${ProPath}/insertRating/",
            type:"POST",
            data:{
                userID:<%=userID%>,
                movieID:<%=movieID%>,
                rating:Rating,

            },
            success:function(result){
                alert(result.msg)
                ratingInfo()
            }
        });
    }

    function updateRating(Rating){
        $.ajax({
            url:"${ProPath}/updateRating/",
            type:"POST",
            data:{
                userID:<%=userID%>,
                movieID:<%=movieID%>,
                rating:Rating,
            },
            success:function(result){
                alert(result.msg)
                ratingInfo()
            }
        });
    }
</script>
</body>
</html>