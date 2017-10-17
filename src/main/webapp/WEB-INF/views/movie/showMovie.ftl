<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>MovieData</title>
</head>
<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive" >
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
                <td><a href="/actor/${actor.id}">${actor.id}</a></td>
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
                <td><a href="/director/${director.id}">${director.id}</a></td>
                <td>${director.name}</td>
                <td>${director.dateOfBirth}</td>
            </tr>
        </#list>
    </table>
</div>
</#if>

<h2>Trailer: </h2>
<#--<iframe width="560" height="315" src="https://www.youtube.com/embed/J---aiyznGQ" frameborder="0" allowfullscreen> </iframe>-->

<#if movie.trailerLink ??>
    ${movie.trailerLink}
</#if>
<br/>

<a type="button" href="/movie/all" class="button">Back</a>
</body>
</html>