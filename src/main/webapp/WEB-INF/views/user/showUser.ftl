<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>User info</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>${user.id}</a></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${user.username}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${user.email}</td>
        </tr>
        <td>Age</td>
        <td>${user.age}</td>
        </tr>
    </table>
</div>

<#--<form action="/addMovieToUser" method="post" username="movie" class="form-group">
    Id
    <input title="id" username="id"/>
    <input type="submit" title="OK" value="Add"/>
</form>-->

<#--<div class="table-responsive">
    <caption>User movies</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>Name</a></td>
            <td>Year</td>
            <td>Genre</td>
            <td>Price</a></td>
        </tr>
    <#list user.movieList as movie>
        <tr>
            <td>${movie.id}</td>
            <td>${movie.username}</td>
            <td>${movie.year}</td>
            <td>${movie.genre}</td>
            <td>${movie.price}</td>
        </tr>
    <#else>
        <h1>Empty movies</h1>
    </#list>

    </table>
</div>-->
<a type="button" href="all" class="button">Back</a>

</body>
</html>