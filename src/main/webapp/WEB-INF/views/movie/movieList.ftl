<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie List</title>
    <link rel="stylesheet" type="text/css" href="mysite.css">
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<div class="table-responsive">
    <caption>Movies list</caption>
    <table class="table table-striped">
        <tr>
            <th><a href="all?order=id">Id</a></th>
            <th><a href="all?order=name">Name</a></th>
            <th><a href="all?order=genre">Genre</a></th>
            <th><a href="all?order=year">Year</a></th>
            <th><a href="all?order=price">Price</a></th>
        <@security.authorize access="hasRole('ADMIN')">
            <th>Buttons</th>
        </@security.authorize>
        <@security.authorize access="isAuthenticated()">
            <th>Buy</th>
        </@security.authorize>
        </tr>
    <#list movies as movie>
        <tr>
            <td><a href="/movie/${movie.id}">${movie.id}</a></td>
            <#if movie.name ??>
                <td>${movie.name}</td><#else>
                <td>Null</td></#if>
            <#if movie.genre ??>
                <td>${movie.genre}</td><#else>
                <td>Null</td></#if>
            <#if movie.year ??>
                <td>${movie.year}</td><#else>
                <td>Null</td></#if>
            <#if movie.price ??>
                <td>${movie.price}</td><#else>
                <td>Null</td></#if>
            <@security.authorize access="hasRole('ADMIN')">
                <td>
                    <a href="${movie.id}?edit=true">Edit</a> |
                    <a href="delete/${movie.id}">Delete</a>
                </td>
            </@security.authorize>
            <@security.authorize access="isAuthenticated()">
                <td>
                    <a href="addToCart/${movie.id}">Add to Cart</a>
                </td>
            </@security.authorize>
        </tr>
    </#list>
    </table>
<#if pages??>
    <#list pages as page>
        Pages: <span><a href="/movie/all?page=${page}">${page} </a></span>
    </#list>
</#if>
</div>
<@security.authorize access="hasRole('ADMIN')">
    <#include "createMovieForm.ftl"/>
</@security.authorize>
</body>
</html>
