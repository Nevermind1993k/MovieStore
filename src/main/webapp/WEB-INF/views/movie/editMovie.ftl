<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Edit</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">

<form action="update" method="post" name="mvoie" class="form-group">
    ID: <input title="Id" type="number" name="id" value="${movie.id}"/><br/>
<#if movie.name ??> Name : <input title="Name" type="text" name="name" value="${movie.name}"/><br/></#if>
<#if movie.genre ??> Genre :<input title="Genre" type="text" name="genre" value="${movie.genre}"/><br/></#if>
<#if movie.year ??> Year :<input title="Year" type="number" name="year" value="${movie.year}"/><br/></#if>
<#if movie.genre ??> Price :<input title="Price" type="number" name="price" value="${movie.price}"/><br/></#if>
<#if movie.trailerLink ??> Trailer :<input title="Trailer" type="text" name="trailerLink" value="${movie.trailerLink}"/><br/></#if>
    <input type="submit" title="Update" value="Edit!"/>
</form>
<a type="button" href="/movie/all" class="button">Back</a>
</body>
</html>

