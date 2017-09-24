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
            <th>Genre</th>
            <th>Year</th>
            <th>Price</th>
            <th>Buttons</th>
        </tr>
    <#list movies as movie>
        <tr>
            <td><a href="/movie/${movie.id}">${movie.id}</a></td>
            <td>${movie.name}</td>
            <td>${movie.genre}</td>
            <td>${movie.year}</td>
            <td>${movie.price}</td>
            <td><form action="/delete/${movie.id}"><input type='submit' title="Delete" value='X'></form>
                <form action="/edit/${movie.id}"><input type='submit' title="Edit" value='E'></form>
            </td>
        </tr>
    </#list>
    </table>
</div>
<#include "templates/createMovieForm.ftl"/>
</body>
</html>