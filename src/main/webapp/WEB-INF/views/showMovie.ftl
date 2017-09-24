<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>
<body class="container">
<#include "templates/header.ftl">
<div class="table-responsive">
    <caption>Movie info</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>${movie.id}</a></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${movie.name}</td>
        </tr>
        <td>Genre</td>
        <td>${movie.genre}</td>
        </tr>
        <tr>
            <td>Year</td>
            <td>${movie.year}</td>
        </tr>
        <tr>
            <td>Price</td>
            <td>${movie.price}</td>
        </tr>
    </table>
</div>
<a type="button" href="/movies" class="button">Back</a>
</body>
</html>