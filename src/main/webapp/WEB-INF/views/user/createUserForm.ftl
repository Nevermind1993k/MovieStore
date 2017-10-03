<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>
<body class="container">

<#if errors??>
EROOR:
    <#list errors as error>
    <h1>error</h1><br>
    </#list>
</#if>

<div id="content">
    <fieldset>
        <legend>Add User</legend>
        <form action="/create" method="post" username="user" class="form-group">
            Name :&thinsp;<input type="text" title="Name"  username="username"/><br/>
            Email :&nbsp;<input type="text" title="Email"  username="email"/><br/>
            Age :&#8194;&nbsp; <input type="number" title="Age"  username="age"/><br/>
            <input type="submit" value="Save"/>
        </form>
    </fieldset>
    <br/>
</div>

<a type="button" href="/all" class="button">Back</a>
</body>
</html>
