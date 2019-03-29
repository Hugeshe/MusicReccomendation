<%--
  Created by IntelliJ IDEA.
  User: 74525
  Date: 2019/3/23
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<%=basePath%>/static/favicon.ico">

    <title>${song.songname}</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link type="text/css" rel="stylesheet" href="<%=basePath%>/css/signin.css">
</head>
<body>
<div class="container">
    <%@include file="common/navbar.jsp"%>
    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10" style="padding-bottom: 10px">
            <h3>
                请欣赏：
            </h3>
            <div class="row">
                <div class="col-md-3">
                    <img alt="Bootstrap Image Preview" src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg" class="img-circle" />
                </div>
                <div class="col-md-6" style="font-size: 17px; font-family: Cambria">
                    <dl>
                        <dt>
                            歌曲名
                        </dt>
                        <dd>
                            songname
                        </dd>
                        <dt>
                            歌手
                        </dt>
                        <dd>
                            singer
                        </dd>
                        <dd>
                            singer2
                        </dd>
                        <dt>
                            专辑
                        </dt>
                        <dd>
                            album
                        </dd>
                    </dl>
                    <button type="button" class="btn btn-danger btn-sm">
                        播放
                    </button>
                    <button type="button" class="btn btn-sm">
                        收藏
                    </button>
                </div>
                <div class="col-md-3">
                    <ul>
                        <li class="list-item">
                            相似歌曲
                        </li>
                        <li class="list-item">
                            Consectetur
                        </li>
                        <li class="list-item">
                            Integer
                        </li>
                        <li class="list-item">
                            Facilisis
                        </li>
                        <li class="list-item">
                            Nulla
                        </li>
                        <li class="list-item">
                            Faucibus
                        </li>
                        <li class="list-item">
                            Aenean
                        </li>
                        <li class="list-item">
                            Eget
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>
