<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ActorData</title>
</head>
<body class="container">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Actor info</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>${actor.id}</a></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${actor.username}</td>
        </tr>
        <tr>
            <td>Date Of Birth</td>
            <td>${actor.dateOfBirth}</td>
        </tr>
    </table>
</div>

<div class="table-responsive">
    <caption>Actor movies</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>Name</a></td>
            <td>Year</td>
            <td>Genre</td>
        </tr>
    <#list actor.movieList as movie>
        <tr>
            <td>${movie.id}</td>
            <td>${movie.username}</td>
            <td>${movie.year}</td>
            <td>${movie.genre}</td>
        </tr>
    <#else>
        <h1>Empty movies</h1>
    </#list>

    </table>
</div>

<a type="button" href="/actors" class="button">Back</a>
</body>
</html>