<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
    <style>
        form {
            display: inline;
        }
    </style>
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
            <th>Age</th>
            <th>Buttons</th>
        </tr>
    <#list users as user>
        <tr>
            <td><a href="/user/${user.id}">${user.id}</a></td>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>${user.age}</td>
            <td>
                <a href="${user.id}?edit=true">Edit</a>
                <a href="delete/${user.id}">Delete</a>
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