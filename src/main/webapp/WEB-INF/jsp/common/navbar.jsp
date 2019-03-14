<%--
  Created by IntelliJ IDEA.
  User: 74525
  Date: 2019/3/13
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/music/jsp/index">音乐推荐系统</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/music/jsp/index">首页</a></li>
                <li><a href="#about">相关</a></li>
                <li><a href="#contact">联系</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/music/jsp/signIn_page">登陆</a></li>
                        <li><a href="/music/jsp/signUp_page">注册</a></li>
                        <li><a href="/music/jsp/self_page">个人页</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="/music/jsp/signIn_page">切换账号</a></li>
                        <li><a href="/music/jsp/signOut_page">注销</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>