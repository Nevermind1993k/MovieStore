<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<#assign security=JspTaglibs["http://www.springframework.org/security/tags"]/>
<#import "/spring.ftl" as spring/>

<#--<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Movie-Store</a>
        </div>
        <ul class="nav navbar-nav navbar-left">
        <@security.authorize access="hasRole('ADMIN')">
            <li class="active"><a href="/user/all">Users</a></li>
        </@security.authorize>
            <li class="active"><a href="/movie/all">Movies</a></li>
            <li class="active"><a href="/actor/all">Actors</a></li>
            <li class="active"><a href="/director/all">Directors</a></li>
        <@security.authorize access="permitAll">
            <li class="active"><a href="/infoPage">Info</a></li>
        </@security.authorize>
        <@security.authorize access="isAuthenticated()">
            <li class="active"><a href="/cart/all">Cart</a></li>
        <li class="active"><a href="/user/1"><@security.authentication property="principal.username"/></a></li>
            <li class="active"><a href="/logout">Logout</a></li>
        </@security.authorize>
        <@security.authorize access="isAnonymous()">
            <li class="active"><a href="/loginPage">Login</a></li>
        </@security.authorize>
        </ul>
    </div>
</nav>-->

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Movie-Store</a>
        </div>
        <ul class="nav navbar-nav navbar-left">
        <@security.authorize access="hasRole('ADMIN')">
            <li class="active"><a href="/user/all"><@spring.message "header.users"/></a></li>
        </@security.authorize>
            <li class="active"><a href="/movie/all"><@spring.message "header.movies"/></a></li>
            <li class="active"><a href="/actor/all"><@spring.message "header.actors"/></a></li>
            <li class="active"><a href="/director/all"><@spring.message "header.directors"/></a></li>
        <@security.authorize access="permitAll">
            <li class="active"><a href="/infoPage"><@spring.message "header.info"/></a></li>
        </@security.authorize>
        <@security.authorize access="isAuthenticated()">
            <li class="active"><a href="/cart/all"><@spring.message "header.cart"/></a></li>
            <li class="active"><a href="/user/1"><@security.authentication property="principal.username"/></a></li>
            <li class="active"><a href="/logout"><@spring.message "header.logout"/></a></li>
        </@security.authorize>
        <@security.authorize access="isAnonymous()">
            <li class="active"><a href="/loginPage"><@spring.message "header.login"/></a></li>
        </@security.authorize>
        </ul>
    </div>
</nav>
