<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Store</title>
<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
</head>

<body class="container" style="background-color: lightgrey">
<#include "WEB-INF/views/header.ftl">
<div class="container">
    <h3> Welcome to Movie-Store </h3>
<@security.authorize access="isAuthenticated()">
    <h1><@security.authentication property="principal.username"/></h1>
    <h3><a href="/logout">Logout</a></h3>
<#--<h1><@security.authentication property="principal.id"/></h1>-->
</@security.authorize><br/>
<@security.authorize access="isAnonymous()">
    <span> <b><a href="/loginPage.ftl">Login</a> | <a href="/registerPage.ftl">Register</a></b></span>
</@security.authorize>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
<#--<h3> <@spring.message "title"/></h3>
<h3>${.locale}</h3>-->
</div>
</body>
</html>