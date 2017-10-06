<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MovieStore</title>
<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
</head>

<body class="container" style="background-color: lightgrey">
<#include "WEB-INF/views/header.ftl">
<div class="container">
<@security.authorize access="isAuthenticated()">
    <h1>Welcome to Movie-Store, <h2><@security.authentication property="principal.username"/></h2></h1>
</@security.authorize>
</div>
</body>
</html>