<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DirectorData</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Director info</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>${director.id}</a></td>
        </tr>
        <tr>
            <td>Name</td>
        <#if director.name ??>
            <td>${director.name}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Date Of Birth</td>
        <#if director.dateOfBirth ??>
            <td>${director.dateOfBirth}</td><#else>
            <td>Null</td></#if>
        </tr>
    </table>
</div>
<br>
<#if director.movieList ? size !=0>
<div class="table-responsive">
    <caption>Director movies</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>Name</a></td>
            <td>Year</td>
            <td>Genre</td>
        </tr>
        <#list director.movieList as movie>
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

<a type="button" href="/director/all" class="button">Back</a>
</body>
</html>