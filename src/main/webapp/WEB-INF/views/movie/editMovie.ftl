<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ActorData</title>
</head>
<body class="container">
<#include "*/header.ftl">

<form action="update" method="post" name="actor" class="form-group">
    <input title="Id" type="number" name="id" value="${movie.id}"/>
    <input title="Name" type="text" name="name" value="${movie.name}"/>
    <input title="Genre" type="text" name="genre" value="${movie.genre}"/>
    <input title="Price" type="number" name="price" value="${movie.price}"/>
<#if movie.trailerLink ??>
    <input title="Trailer" type="text" name="trailerLink" value="${movie.trailerLink}"/>
</#if>
    <input type="submit" title="OK" value="Edit!"/>
</form>
<a type="button" href="/actor/all" class="button">Back</a>
</body>
</html>

