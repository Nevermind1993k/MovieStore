<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Store</title>
<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
    <style>
        form {
            display: inline;
        }
    </style>
</head>

<body class="container" style="background-color: lightgrey">
<#include "WEB-INF/views/header.ftl">
<div class="container">
    <h3> Welcome to Movie-Store </h3>
<@security.authorize access="isAuthenticated()">
    <h1><@security.authentication property="principal.username"/></h1>
</@security.authorize>
</div>
</body>

</html>