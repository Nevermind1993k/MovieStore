<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>
<body class="container">
<#include "*/header.ftl">

<form action="update" method="post" name="user" class="form-group">
    <input title="Id" type="number" name="id" value="${user.id}"/>
    <input title="Name" type="text" name="username" value="${user.username}"/>
    <input title="Email" type="text" name="email" value="${user.email}"/>
    <input title="Age" type="number" name="age" value="${user.age}"/>
    <input type="submit" title="OK" value="Edit!"/>
</form>
<a type="button" href="/user/all" class="button">Back</a>
</body>
</html>

