<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Genre List</title>
    <style>
        form {
            display: inline;
        }
    </style>
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Genre list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
        <@security.authorize access="hasRole('ADMIN')">
            <th>Buttons</th>
        </@security.authorize>
        </tr>
    <#list genres as genre>
        <tr>
            <td><a href="/genre/${genre.id}">${genre.id}</a></td>
            <#if genre.name ??>
                <td>${genre.name}</td><#else>
                <td>Null</td></#if>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${genre.id}?edit=true">Edit</a> | <a href="delete/${genre.id}">Delete</a>
                </td>
            </@security.authorize>
        </tr>
    </#list>
    </table>
</div>
<@security.authorize access="hasRole('ADMIN')">
    <#include "createGenreForm.ftl"/>
</@security.authorize>

<div style="position: relative; width: 600px; height: 800px;">
    <div style="position: absolute; bottom: 5px">
        <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
    </div>
</div>
</body>
</html>