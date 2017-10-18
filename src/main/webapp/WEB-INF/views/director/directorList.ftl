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
        <td><a href="/director/${director.id}">${director.id}</a>
            <#if director.name ??>
                <td>${director.name}</td><#else>
                <td>Null</td></#if>
            <#if director.dateOfBirth ??>
                <td>${director.dateOfBirth}</td><#else>
                <td>Null</td></#if>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${director.id}?edit=true">Edit</a>
                    <a href="delete/${director.id}">Delete</a>
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