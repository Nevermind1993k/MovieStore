<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GenreData</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">

<form action="update" method="post" name="genre" class="form-group">
    ID: <input title="Id" type="number" name="id" value="${genre.id}" hidden/><br/>
<#if genre.name ??> Name : <input title="Name" type="text" name="name" value="${genre.name}"/><br/></#if>
    <input type="submit" title="OK" value="Edit!"/>
</form>
<a type="button" href="/genre/all" class="button">Back</a>

<div style="position: relative; width: 600px; height: 800px;">
    <div style="position: absolute; bottom: 5px">
        <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
    </div>
</div>
</body>
</html>

