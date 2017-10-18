<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie List</title>
    <link rel="stylesheet" type="text/css" href="mysite.css">
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Movies list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Price</th>
        <@security.authorize access="hasRole('ADMIN')">
            <th>Buttons</th>
        </@security.authorize>
        <@security.authorize access="isAuthenticated()">
            <th>Buy</th>
        </@security.authorize>
        </tr>
    <#list movies as movie>
        <tr>
            <td><a href="/movie/${movie.id}">${movie.id}</a></td>
            <#if movie.name ??>
                <td>${movie.name}</td><#else>
                <td>Null</td></#if>
            <#if movie.genre ??>
                <td>${movie.genre}</td><#else>
                <td>Null</td></#if>
            <#if movie.year ??>
                <td>${movie.year}</td><#else>
                <td>Null</td></#if>
            <#if movie.price ??>
                <td>${movie.price}</td><#else>
                <td>Null</td></#if>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${movie.id}?edit=true">Edit</a> |
                    <a href="delete/${movie.id}">Delete</a>
                <#--<form action="/edit/${movie.id}"><input type='submit' title="Edit" value='E'></form>-->
                <#--<form action="/delete/${movie.id}"><input type='submit' title="Delete" value='X'></form>-->
                </td>
            </@security.authorize>
            <@security.authorize access="isAuthenticated()">
                <td>
                    <a href="addToCart/${movie.id}">Add to Cart</a>
                </td>
            </@security.authorize>
        </tr>
    </#list>
    </table>
</div>
<@security.authorize access="hasRole('ADMIN')">
    <#include "createMovieForm.ftl"/>
</@security.authorize>
</body>
</html>
