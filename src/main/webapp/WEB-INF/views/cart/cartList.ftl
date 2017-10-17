<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Cart List</title>
<#assign security=JspTaglibs["http://www.springframework.org/security/tags"]/>
</head>

<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">

<#--<div class="table-responsive">
    <caption>Cart list</caption>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Movies</th>
            <th>Buttons</th>
        </tr>
    <#list movies as movie>
        <tr>
            <td><a href="/movie/${movie.id}">${movie.id}</a></td>
            <td>${movie.name}</td>
            <td>${movie.price}</td>
            <td>
                <a href="/buyMovie">Buy</a>
            </td>
        </tr>
    </#list>
    </table>
</div>-->
</body>

</html>
