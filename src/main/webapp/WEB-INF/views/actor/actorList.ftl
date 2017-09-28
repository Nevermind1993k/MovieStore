<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ActorData</title>
    <style>
        form {
            display: inline;
        }
    </style>
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Actor list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Date Of Birth</th>
            <th>Buttons</th>
        </tr>
    <#list actors as actor>
        <tr>
            <td><a href="/actor/${actor.id}">${actor.id}</a></td>
            <td>${actor.name}</td>
            <td>${actor.dateOfBirth}</td>
            <td>
                <form action="/edit/${actor.id}"><input type='submit' title="Edit" value='E'></form>
                <form action="/delete/${actor.id}"><input type='submit' title="Delete" value='X'></form>
            </td>
        </tr>
    </#list>
    </table>
</div>
<#include "createActorForm.ftl"/>
</body>
</html>