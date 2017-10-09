<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Director List</title>
    <style>
        form {
            display: inline;
        }
    </style>
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Directors list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Date Of Birth</th>
        <@security.authorize access="hasRole('ADMIN')">
            <th>Buttons</th>
        </@security.authorize>
        </tr>
    <#list directors as director>
        <tr>
            <td><a href="/director/${director.id}">${director.id}</a></td>
            <td>${director.name}</td>
            <td>${director.dateOfBirth}</td>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${director.id}?edit=true">Edit</a>
                    <a href="delete/${director.id}">Delete</a>
                <#--<form action="/edit/${director.id}"><input type='submit' title="Edit" value='E'></form>-->
                <#--<form action="/delete/${director.id}"><input type='submit' title="Delete" value='X'></form>-->
                </td>
            </@security.authorize>
        </tr>
    </#list>
    </table>
</div>
<@security.authorize access="hasRole('ADMIN')">
<#include "createDirectorForm.ftl"/>
</@security.authorize>
</body>
</html>