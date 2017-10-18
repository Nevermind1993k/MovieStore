<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">

<form action="update" method="post" name="user" class="form-group">
    ID: <input title="Id" type="number" name="id" value="${user.id}"/><br/>
<#if user.username ??> Name : <input title="Name" type="text" name="username" value="${user.username}"/><br/></#if>
<#if user.email ??> Email :&nbsp; <input title="Email" type="text" name="email" value="${user.email}"/><br/></#if>
<#if user.age ??>Age :&#8194;&nbsp; <input title="Age" type="number" name="age" value="${user.age}"/><br/></#if>
<#if user.password ??>Pass :&nbsp;<input title="Pass" type="text" name="password" value="${user.password}"/><br/></#if>
<#if user.role ??>Role: <input title="Role" type="text" name="role" value="${user.role}"/><br/></#if>
    <input type="submit" title="Update" value="Edit!"/>
</form>
<a type="button" href="/user/all" class="button">Back</a>
</body>
</html>

