<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>


<body class="container" style="background-color: lightgrey">
<#include "*/header.ftl">
<br/>
<br/>

<div id="content">
    <fieldset>
        <legend>Login form</legend>
        <form action="/loginPage" method="post" class="form-group">
            Login&#8194;&nbsp;&#8194;&nbsp;&#8194;<input title="Name" type="text" name="username"/><br/>
            Password <input title="Pass" type="password" name="password"/><br/>
            <input type="submit" value="Login"/>
        <@security.authorize access="permitAll">
            <a href="/registerPage.ftl">Register</a>
        </@security.authorize>

        <#--<input type="submit" value="Register"/>-->
        <#--<form action="registerPage.ftl"><input type='submit' title="Reg" value='Register'></form>-->

        </form>
    </fieldset>
    <br/>
</div>

<div style="position: relative; width: 600px; height: 800px;">
    <div style="position: absolute; bottom: 5px">
        <a href="/?mylocale=en">English </a> | <a href="/?mylocale=ua">Ukraine </a>
    </div>
</div>

</body>
</html>
