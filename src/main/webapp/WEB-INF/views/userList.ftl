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

<body class="container" style="background-color: grey">
<#include "templates/header.ftl">
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
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.age}</td>
            <td>
                <form action="/edit/${user.id}"><input type='submit' title="Edit" value='E'></form>
                <form action="/delete/${user.id}"><input type='submit' title="Delete" value='X'></form>
            </td>
        </tr>
    </#list>
    </table>
</div>
<#include "templates/createUserForm.ftl"/>
</body>
</html>