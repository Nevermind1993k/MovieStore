<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>

<body class="container" style="background-color: lightgrey">
<#--<#include "*/header.ftl">-->

<#if errors??>
    <#list errors as error>
    <td>${error}</td>
    <br/>
    </#list>
</#if>

<br/>

<div id="content">
    <fieldset>
        <legend>Add User</legend>
        <form action="create" method="post" name="user" class="form-group">
            Name :&thinsp;<input type="text" title="Name"  name="username"/><br/>
            Email :&nbsp;<input type="email" title="Email"  name="email"/><br/>
            Age :&#8194;&nbsp; <input type="number" title="Age"  name="age"/><br/>
            Pass :&nbsp;<input type="text" title="Password"  name="password"/><br/>
            <#--Enabl : <input type="number" title="Enabled"  name="enabled"/><br/>-->
            <#--Role: <input type="text" title="Role"  name="role" /><br/>-->
            <input type="submit" value="Create"/>
        </form>
    </fieldset>
    <br/>
</div>

<#--<a type="button" href="/all" class="button">Back</a>-->
<#if errors??>
<br/>
<a href="/registerPage">Back </a>
</#if>
</body>
</html>
