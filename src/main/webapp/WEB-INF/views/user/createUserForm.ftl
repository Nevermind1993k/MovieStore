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
        <form action="create" method="post" name="user" class="form-group">
            Name :&thinsp;<input type="text" title="Name"  name="username"/><br/>
            Email :&nbsp;<input type="text" title="Email"  name="email"/><br/>
            Age :&#8194;&nbsp; <input type="number" title="Age"  name="age"/><br/>
            <input type="submit" value="Create"/>
        </form>
    </fieldset>
    <br/>
</div>

<#--<a type="button" href="/all" class="button">Back</a>-->
</body>
</html>
