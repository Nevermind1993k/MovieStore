<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MovieData</title>
</head>
<body class="container">
<#include "*/header.ftl">

<form action="update" method="post" name="movie" class="form-group">
    <input title="Id" type="number" name="id" value="${movie.id}"/>
    <input title="Name" type="text" name="name" value="${movie.name}"/>
    <input title="Genre" type="text" name="genre" value="${movie.genre}"/>
    <input title="Year" type="number" name="yaar" value="${movie.year}"/>
    <input title="Price" type="number" name="price" value="${movie.price}"/>
    <input type="submit" title="OK" value="Edit!"/>
</form>
<a type="button" href="/movie/all" class="button">Back</a>
</body>
</html>

