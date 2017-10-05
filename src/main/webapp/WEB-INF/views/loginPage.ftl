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
        <legend>Enter Your login and pass</legend>
        <form action="/loginPage" method="post" class="form-group">
            Login&#8194;&nbsp;&#8194;&nbsp;&#8194;
            <input title="Name" type="text" name="username"/><br/>
            Password
            <input title="Pass" type="text" name="password"/><br/>
            <input type="submit" value="Login"/>
        </form>
    </fieldset>
    <br/>
</div>
</body>
</html>
