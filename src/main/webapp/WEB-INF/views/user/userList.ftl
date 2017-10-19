<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        form {
            display: inline;
        }
    </style>
<#assign security=JspTaglibs["http://www.springframework.org/security/tags"]/>
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Users list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Pass</th>
            <th>Age</th>
            <th>Enabled</th>
            <th>Role</th>
        <@security.authorize access="hasRole('ADMIN')">
            <th>Buttons</th>
        </@security.authorize>
        </tr>
    <#list users as user>
        <tr>
            <td><a href="/user/${user.id}">${user.id}</a></td>
            <#if user.username ??>
                <td>${user.username}</td><#else>
                <td>Null</td></#if>
            <#if user.email ??>
                <td>${user.email}</td><#else>
                <td>Null</td></#if>
            <#if user.password ??>
                <td>${user.password}</td><#else>
                <td>Null</td></#if>
            <#if user.age ??>
                <td>${user.age}</td><#else>
                <td>Null</td></#if>
            <#if user.enabled ??>
                <td>${user.enabled}</td><#else>
                <td>Null</td></#if>
            <#if user.role ??>
                <td>${user.role}</td><#else>
                <td>Null</td></#if>
            <td>
                <@security.authorize access="hasRole('ADMIN')">
                    <a href="${user.id}?edit=true">Edit</a>
                    <a href="delete/${user.id}">Delete</a>
                </@security.authorize>
            <#--<form action="${user.id}?edit=true"><input type='submit' title="Edit" value='E'></form>-->
            <#--<form action="delete/${user.id}"><input type='submit' title="Delete" value='X'></form>-->
            </td>
        </tr>
    </#list>
    </table>
</div>
<#include "createUserForm.ftl"/>
</body>
</html>