<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MovieData</title>
    <style>
        form {
            display: inline;
        }
    </style>
</head>

<body class="container">
<#include "templates/header.ftl">
<div class="table-responsive">
    <caption>Movies list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Date Of Bearth</th>
            <th>Buttons</th>
        </tr>
    <#list actors as actor>
        <tr>
            <td><a href="/actor/${actor.id}">${actor.id}</a></td>
            <td>${actor.name}</td>
            <td>${actor.dateOfBirth}</td>
            <td><form action="/edit/${actor.id}"><input type='submit' title="Edit" value='E'></form>
                <form action="/delete/${actor.id}"><input type='submit' title="Delete" value='X'></form>
            </td>
        </tr>
    </#list>
    </table>
</div>
<#include "templates/createActorForm.ftl"/>
</body>
</html>