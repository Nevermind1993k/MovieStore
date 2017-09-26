<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DirectorData</title>
    <style>
        form {
            display: inline;
        }
    </style>
</head>

<body class="container">
<#include "templates/header.ftl">
<div class="table-responsive">
    <caption>Directors list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Date Of Birth</th>
            <th>Buttons</th>
        </tr>
    <#list directors as director>
        <tr>
            <td><a href="/director/${director.id}">${director.id}</a></td>
            <td>${director.name}</td>
            <td>${director.dateOfBirth}</td>
            <td>
                <form action="/edit/${director.id}"><input type='submit' title="Edit" value='E'></form>
                <form action="/delete/${director.id}"><input type='submit' title="Delete" value='X'></form>
            </td>
        </tr>
    </#list>
    </table>
</div>
<#include "templates/createDirectorForm.ftl"/>
</body>
</html>