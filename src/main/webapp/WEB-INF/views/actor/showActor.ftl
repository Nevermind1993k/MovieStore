<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ActorData</title>
</head>
<body class="container" style="background-color: lightgrey">
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
        <#if actor.name ??>
            <td>${actor.name}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Date Of Birth</td>
        <#if actor.dateOfBirth ??>
            <td>${actor.dateOfBirth}</td><#else>
            <td>Null</td></#if>
        </tr>
    </table>
</div>
<br>
<#if actor.movieList ? size !=0>
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
                <td><a href="/movie/${movie.id}">${movie.id}</a></td>
                <#if movie.name ??>
                    <td>${movie.name}</td><#else>
                    <td>Null</td></#if>
                <#if movie.year ??>
                    <td>${movie.year}</td><#else>
                    <td>Null</td></#if>
                <#if movie.genre ??>
                    <td>${movie.genre}</td><#else>
                    <td>Null</td></#if>
            </tr>
        <#--<#else>-->
        <#--<h1>Empty movies</h1>-->
        </#list>

    </table>
</div>
</#if>

<a type="button" href="/actor/all" class="button">Back</a>

<div style="position: relative; width: 600px; height: 800px;">
    <div style="position: absolute; bottom: 5px">
        <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
    </div>
</div>
</body>
</html>