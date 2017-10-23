<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Register page</title>
<#assign security=JspTaglibs["http://www.springframework.org/security/tags"]/>
<#include "*/header.ftl" >

</head>

<body class="container" style="background-color: lightgray">


<#include "user/createUserForm.ftl"/>
<div style="position: relative; width: 600px; height: 800px;">
    <div style="position: absolute; bottom: 5px">
        <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
    </div>
</div>
</body>

</html>
