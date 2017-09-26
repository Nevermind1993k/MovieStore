<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DirectorData</title>
</head>
<body class="container">
<#include "templates/header.ftl">
<div class="table-responsive">
    <caption>Director info</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>${director.id}</a></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${director.name}</td>
        </tr>
        <tr>
            <td>Date Of Birth</td>
            <td>${director.dateOfBirth}</td>
        </tr>
    </table>
</div>

<a type="button" href="/directors" class="button">Back</a>
</body>
</html>