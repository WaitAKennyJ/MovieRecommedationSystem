<%@ page import="com.wzj.model.User" %><%--
  Created by IntelliJ IDEA.
  User: kennywzj
  Date: 2019/4/19
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false"%>
<% pageContext.setAttribute("ProPath",request.getContextPath());
%>
<% User user = (User)request.getAttribute("user");
   application.setAttribute("user",user);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicons
        ================================================== -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css"  href="${ProPath}/static/movieAssets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${ProPath}/static/movieAssets/fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
        ================================================== -->
    <link rel="stylesheet" type="text/css"  href="${ProPath}/static/movieAssets/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ProPath}/static/movieAssets/css/nivo-lightbox/nivo-lightbox.css">
    <link rel="stylesheet" type="text/css" href="${ProPath}/static/movieAssets/css/nivo-lightbox/default.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
        .faceul{
            margin: 20px auto;/*上下20px，左右居中 如果是四个参数的话，是上右下左*/
            list-style-type: none;/*去掉列表的点*/
            padding:0;/*清空内部边距*/

        }
        .faceul li{
            width: 200px;
            height: 300px;
            border: 1px;
            text-align: center;
            float: left;/*左浮动，横向显示*/
            list-style: none;
            margin-left: 20px;/*每个li的位置间隔*/
            margin-top: 30px;
        }
        .top { margin-bottom: 20px; }
    </style>
</head>
<body>
<!-- Header -->
<header id="header">
    <div class="intro">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-8">
                        <div class="intro-text">
                            <h1>Movie Recommendation</h1>
                            <a href="#portfolio" class="btn btn-custom btn-lg page-scroll">Portfolio</a> <a href="#contact" class="btn btn-custom btn-lg page-scroll"><%=user.getUserName()%> Account</a> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Portfolio Section -->
<div id="portfolio">
    <div class="container">
        <div class="section-title">
            <h2>Portfolio</h2>
        </div>
        <div class="categories">
            <ul class="cat">
                <li>
                    <ol class="type">
                        <li><a onclick="javascript:to_Page(1)" class="active">All</a></li>
                    </ol>
                    <ol class="type">
                    </ol>
                </li>
                <li>
                    <ol class="type">
                        <li><a onclick="javascript:{alert('Please Wait'),$('#movieItems').empty(),to_Recommend(<%=user.getUserID()%>)}" class="inactive">Recommend</a></li>
                    </ol>
                    <ol class="type">
                    </ol>
                </li>
            </ul>
        </div>
        <div class="row col-md-12 top">

               <ul class="faceul" id="movieItems">


               </ul>


        </div>


        <!-- 分页条 -->
        <div class="row col-md-12 button">
            <!-- 文字信息 -->
            <div class="col-md-6" id="page_info">
            </div>
            <!-- 分页表 -->
            <div class="col-md-6">
                <div id="page_nav">

                </div>
            </div>

            <%--GoPage--%>
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
<!-- Contact Section -->

<div id="footer">
    <div class="container">
        <p>Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
    </div>
</div>




<script type="text/javascript" src="${ProPath}/static/movieAssets/js/jquery.1.11.1.js"></script>
<script type="text/javascript" src="${ProPath}/static/movieAssets/js/bootstrap.js"></script>
<script type="text/javascript" src="${ProPath}/static/movieAssets/js/SmoothScroll.js"></script>
<script type="text/javascript" src="${ProPath}/static/movieAssets/js/nivo-lightbox.js"></script>
<script type="text/javascript" src="${ProPath}/static/movieAssets/js/jquery.isotope.js"></script>
<script type="text/javascript" src="${ProPath}/static/movieAssets/js/jqBootstrapValidation.js"></script>
<script type="text/javascript" src="${ProPath}/static/movieAssets/js/contact_me.js"></script>
<script type="text/javascript" src="${ProPath}/static/movieAssets/js/main.js"></script>


<script>
    $(function(){
        to_Page(1)
    });
    function to_Recommend(userID){
        $.ajax({
            url:"${ProPath}/MovieRecommend",
            data:"userID="+userID,
            type:"GET",
            success:function(result){
                var movies = result.extend.movies;
                build_table(movies);
//                alert(result.msg)
//                window.location.href="#portfolio";
            }
        });
    }
    function to_Page(page){
        $.ajax({
            url:"${ProPath}/MovieInfo",
            data:"page="+page,
            type:"PUT",
            success:function(result){
                var movies = result.extend.pageInfo.list;
                build_table(movies);
                build_inf(movies);
                build_nav(movies);
//                window.location.href="#portfolio";
            }
        });
    }
    //    解析表格
    function build_table(admins){
        $("#movieItems").empty();

        $.each(admins,function(index,item){
            <%--var countTD = $("<td></td>").append(item.movieID);--%>
            <%--var titleTD = $("<td></td>").append(item.title);--%>
            <%--var yearTD = $("<td></td>").append(item.publishYear);--%>
            <%--var genresTD = $("<td></td>").append(item.genres);--%>
            <%--var coverTD = $("<td></td>").append("<img width='200' height='300' alt='暂无图片' src='${ProPath}/static/movie_image/"+item.title+" .jpg'/>");--%>

            var imgDiv = $("<div class='row'></div>");
            var imgTag = $("<img width='200' height='300' alt='No Image!' src='${ProPath}/static/movie_image/"+item.title+" .jpg' class='img-responsive' alt='No image'/>");
            var aTag = $("<a href='${ProPath}/MovieItem/"+item.movieID+"'></a>").append(imgTag);
            var titleDiv = $("<div class='row'></div>").append(item.title);
            imgDiv.append(aTag);
            $("<li></li>")
                    .append(imgDiv)
                    .append(titleDiv)
                    .appendTo("#movieItems");

        });
    }
    //    解析分页信息

    function build_inf(result){
        $("#page_info").empty();
        $("#page_info").append("Now Page:"+result.extend.pageInfo.pageNum+",Toal Page:"+result.extend.pageInfo.pages+",Toal Movies:"+result.extend.pageInfo.total);
        totalRecord = result.extend.pageInfo.total;
        currentPage = result.extend.pageInfo.pageNum;
    }
    //    解析导航条
    function build_nav(result){

        $("#page_nav").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        var firstNav = $("<li></li>").append($("<a></a>").append("FirstPage").attr("href","#"));
        var preNav = $("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
        var nextNav = $("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
        var lastNav = $("<li></li>").append($("<a></a>").append("LastPage").attr("href","#"));
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


    //输入页面
    $("#inputPageNumConfirm").click(function(){
        var inputPageNum = $("#inputPageNum").val();
        to_Page(inputPageNum);
    });

</script>


</body>
</html>
