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
            <td>${actor.name}</td>
            <td>${actor.dateOfBirth}</td>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${actor.id}?edit=true">Edit</a>
                    <a href="delete/${actor.id}">Delete</a>
                <#--<form action="/edit/${actor.id}"><input type='submit' title="Edit" value='E'></form>-->
                <#--<form action="/delete/${actor.id}"><input type='submit' title="Delete" value='X'></form>-->
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