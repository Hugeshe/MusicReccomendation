<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 74525
  Date: 2019/3/8
  Time: 21:40
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

    <title>Signin Template for Bootstrap</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <%--<base href="<%=basePath%>">--%>
    <link type="text/css" href="<%=basePath%>/css/signin.css" rel="stylesheet">

</head>

<body>

<div class="container">
    <%@ include file="common/navbar.jsp"%>
    <form class="form-signin" action="<%=basePath%>/user/signUp" method="post">
        <c:out value="${message}"/>
        <h2 class="form-signin-heading">Please sign up</h2>
        <label for="inputEmail" class="sr-only">用户名：</label>
        <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
        <%--<div class="checkbox">--%>
        <%--<label>--%>
        <%--<input type="checkbox" value="remember-me"> Remember me--%>
        <%--</label>--%>
        <%--</div>--%>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
    </form>

</div> <!-- /container -->

</body>
</html>
