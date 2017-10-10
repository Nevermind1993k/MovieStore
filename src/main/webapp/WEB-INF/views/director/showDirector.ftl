<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DirectorData</title>
</head>
<body class="container">
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
            <td>${director.name}</td>
        </tr>
        <tr>
            <td>Date Of Birth</td>
            <td>${director.dateOfBirth}</td>
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
                <td>${movie.id}</td>
                <td>${movie.name}</td>
                <td>${movie.year}</td>
                <td>${movie.genre}</td>
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