<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GenreData</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Genre info</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>${genre.id}</a></td>
        </tr>
        <tr>
            <td>Name</td>
        <#if genre.name ??>
            <td>${genre.name}</td><#else>
            <td>Null</td></#if>
        </tr>
    </table>
</div>
<br>
<#if genre.movieList ? size !=0>
<div class="table-responsive">
    <caption>Genre movies</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>Name</a></td>
            <td>Year</td>
            <#--<td>Genre</td>-->
        </tr>
        <#list genre.movieList as movie>
            <tr>
                <td><a href="/movie/${movie.id}">${movie.id}</a></td>
                <#if movie.name ??>
                    <td>${movie.name}</td><#else>
                    <td>Null</td></#if>
                <#if movie.year ??>
                    <td>${movie.year}</td><#else>
                    <td>Null</td></#if>
                <#--<#if movie.genre ??>
                    <td>${movie.genre}</td><#else>
                    <td>Null</td></#if>-->
            </tr>
        </#list>

    </table>
</div>
</#if>

<a type="button" href="/genre/all" class="button">Back</a>

<div style="position: relative; width: 600px; height: 800px;">
    <div style="position: absolute; bottom: 5px">
        <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
    </div>
</div>
</body>
</html>