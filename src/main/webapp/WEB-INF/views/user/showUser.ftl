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
        <#if user.username ??>
            <td>${user.username}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Email</td>
        <#if user.email ??>
            <td>${user.email}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Password</td>
        <#if user.password ??>
            <td>${user.password}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Age</td>
        <#if user.age ??>
            <td>${user.age}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Role</td>
        <#if user.role ??>
            <td>${user.role}</td><#else>
            <td>Null</td></#if>
        </tr>
    </table>
</div>

<#--<form action="/addMovieToUser" method="post" username="movie" class="form-group">
    Id
    <input title="id" username="id"/>
    <input type="submit" title="OK" value="Add"/>
</form>-->

<div class="table-responsive">
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
        <#--<td>${movie.id}</td>-->
            <td><a href="/movie/${movie.id}">${movie.id}</a></td>
            <td>${movie.name}</td>
            <td>${movie.year}</td>
            <td>${movie.genre}</td>
            <td>${movie.price}</td>
        </tr>
    <#else>
        <h1>Empty movies</h1>
    </#list>

    </table>
</div>
<a type="button" href="all" class="button">Back</a>

</body>
</html>