<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie List</title>
    <style>
        form {
            display: inline;
        }
    </style>
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
            <th>Buy</th>
        </tr>
    <#list movies as movie>
        <tr>
            <td><a href="/movie/${movie.id}">${movie.id}</a></td>
            <td>${movie.name}</td>
            <td>${movie.genre}</td>
            <td>${movie.year}</td>
            <td>${movie.price}</td>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${movie.id}?edit=true">Edit</a>
                    <a href="delete/${movie.id}">Delete</a>
                <#--<form action="/edit/${movie.id}"><input type='submit' title="Edit" value='E'></form>-->
                <#--<form action="/delete/${movie.id}"><input type='submit' title="Delete" value='X'></form>-->
                </td>
            </@security.authorize>
            <td>
                <a href="addToCart/${movie.id}">Add to Cart</a>
            </td>
        </tr>
    </#list>
    </table>
</div>
<@security.authorize access="hasRole('ADMIN')">
    <#include "createMovieForm.ftl"/>
</@security.authorize>
</body>
</html>
