<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 74525
  Date: 2019/3/23
  Time: 15:37
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

    <title>首页</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <base href="<%=basePath%>">
    <link type="text/css" href="css/signin.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <%@ include file="common/navbar.jsp"%>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
            <h2>
                ${title}
            </h2>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>
                        id
                    </th>
                    <th>
                        歌名
                    </th>
                    <th>
                        歌手
                    </th>
                    <th>
                        专辑
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${songs}" var="song">
                    <tr>
                        <td>
                            ${song.songId}
                        </td>
                        <td>
                            ${song.songname}
                        </td>
                        <td>
                            ${song.singer}
                        </td>
                        <td>
                            ${song.album}
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td>
                        1
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        01/04/2012
                    </td>
                    <td>
                        Default
                    </td>
                </tr>
                <tr class="table-active">
                    <td>
                        1
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        01/04/2012
                    </td>
                    <td>
                        Approved
                    </td>
                </tr>
                <tr class="table-success">
                    <td>
                        2
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        02/04/2012
                    </td>
                    <td>
                        Declined
                    </td>
                </tr>
                <tr class="table-warning">
                    <td>
                        3
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        03/04/2012
                    </td>
                    <td>
                        Pending
                    </td>
                </tr>
                <tr class="table-danger">
                    <td>
                        4
                    </td>
                    <td>
                        TB - Monthly
                    </td>
                    <td>
                        04/04/2012
                    </td>
                    <td>
                        Call in to confirm
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-1">
        </div>
    </div>
</div>
</body>
</html>
