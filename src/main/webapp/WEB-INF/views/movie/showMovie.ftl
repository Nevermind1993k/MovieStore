<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MovieData</title>
</head>
<body class="container">
<#include "*/header.ftl">
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
        <tr>
            <td>Genre</td>
            <td>${movie.genre}</td>
        </tr>
        <td>Year</td>
        <td>${movie.year}</td>
        </tr>
    </table>
</div>


<#--ActorList-->
<br>
<#if movie.actorList ? size !=0>
<div class="table-responsive">
    <caption>Actors in movie</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>Name</a></td>
            <td>Date Of Birth</td>
        </tr>
        <#list movie.actorList as actor>
            <tr>
                <td>${actor.id}</td>
                <td>${actor.name}</td>
                <td>${actor.dateOfBirth}</td>
            </tr>
        </#list>
    </table>
</div>
</#if>
<#--directorList-->
<br>
<#if movie.directorList ? size !=0>
<div class="table-responsive">
    <caption>Directors in movie</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>Name</a></td>
            <td>Date Of Birth</td>
        </tr>
        <#list movie.directorList as director>
            <tr>
                <td>${director.id}</td>
                <td>${director.name}</td>
                <td>${director.dateOfBirth}</td>
            </tr>
        </#list>
    </table>
</div>
</#if>

<h2>Trailer sample: </h2>
<iframe width="560" height="315" src="https://www.youtube.com/embed/KPa1_7AF1lM" frameborder="0" allowfullscreen></iframe>
<br/>

<a type="button" href="/movie/all" class="button">Back</a>
</body>
</html>