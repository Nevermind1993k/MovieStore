<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Actor List</title>
    <style>
        form {
            display: inline;
        }
    </style>
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Actors list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Date Of Birth</th>
        <@security.authorize access="hasRole('ADMIN')">
            <th>Buttons</th>
        </@security.authorize>
        </tr>
    <#list actors as actor>
        <tr>
            <td><a href="/actor/${actor.id}">${actor.id}</a></td>
        <#if actor.name ??>
            <td>${actor.name}</td><#else>
            <td>Null</td></#if>
        <#if actor.dateOfBirth ??>
            <td>${actor.dateOfBirth}</td>
        <#else>
            <td>Null</td></#if>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${actor.id}?edit=true">Edit</a>
                    <a href="delete/${actor.id}">Delete</a>
                </td>
            </@security.authorize>
        </tr>
    </#list>
    </table>
</div>
<@security.authorize access="hasRole('ADMIN')">
<#include "createActorForm.ftl"/>
</@security.authorize>
</body>
</html>