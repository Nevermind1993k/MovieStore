<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>MovieData</title>
</head>
<body class="container" style="background-color: lightgrey">
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
        <#if movie.name ??>
            <td>${movie.name}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Genre</td>
        <#if movie.genre ??>
            <td>${movie.genre}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Year</td>
        <#if movie.year ??>
            <td>${movie.year}</td><#else>
            <td>Null</td></#if>
        </tr>
        <tr>
            <td>Price</td>
        <#if movie.price ??>
            <td>${movie.price}</td><#else>
            <td>Null</td></#if>
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
                <#if actor.name ??>
                    <td>${actor.name}</td><#else>
                    <td>Null</td></#if>
                <#if actor.dateOfBirth ??>
                    <td>${actor.dateOfBirth}</td><#else>
                    <td>Null</td></#if>
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
                <#if director.name ??>
                    <td>${director.name}</td><#else>
                    <td>Null</td></#if>
                <#if director.dateOfBirth ??>
                    <td>${director.dateOfBirth}</td><#else>
                    <td>Null</td></#if>
            </tr>
        </#list>
    </table>
</div>
</#if>
<#--GenreList-->
<br>
<#if movie.genreList ? size !=0>
<div class="table-responsive">
    <caption>Genres:</caption>
    <table class="table table-striped">
        <tr>
            <td>Id</td>
            <td>Name</a></td>
        </tr>
        <#list movie.genreList as genre>
            <tr>
                <td><a href="/genre/${genre.id}">${genre.id}</a></td>
                <#if genre.name ??>
                    <td>${genre.name}</td><#else>
                    <td>Null</td></#if>
            </tr>
        </#list>
    </table>
</div>
</#if>

<#if movie.trailerLink ??>
<h2>Trailer: </h2>
<#--<iframe width="560" height="315" src="https://www.youtube.com/embed/J---aiyznGQ" frameborder="0" allowfullscreen> </iframe>-->
${movie.trailerLink}
</#if>
<br/>
<a type="button" href="/movie/all" class="button">Back</a>

<div style="position: relative; width: 600px; height: 800px;">
    <div style="position: absolute; bottom: 5px">
        <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
    </div>
</div>

</body>
</html>