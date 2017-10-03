<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>
<body class="container">
<#include "*/header.ftl">

<form action="/editUser" method="post" username="user" class="form-group">
    <input title="Id" type="number" username="id" value="${user.id}"/>
    <input title="Name" type="text" username="username" value="${user.username}"/>
    <input title="Email" type="text" username="email" value="${user.email}"/>
    <input title="Age" type="number" username="age" value="${user.age}"/>
    <input type="submit" title="OK" value="Edit!"/>
</form>
<a type="button" href="/all" class="button">Back</a>
</body>
</html>

