<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DirectorData</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">

<form action="update" method="post" name="director" class="form-group">
    ID: <input title="Id" type="number" name="id" value="${director.id}"/><br/>
<#if director.name ??> Name : <input title="Name" type="text" name="name" value="${director.name}"/><br/></#if>
<#if director.dateOfBirth ??> DoB : <input title="DoB" type="date" pattern="yyyy-MM-dd" name="dateOfBirth" value="${director.dateOfBirth}"/><br/></#if>
    <input type="submit" title="OK" value="Edit!"/>
</form>
<a type="button" href="/actor/all" class="button">Back</a>
</body>
</html>

