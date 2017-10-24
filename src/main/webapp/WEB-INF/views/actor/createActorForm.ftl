<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>UserData</title>
</head>

<body class="container" style="background-color: lightgrey">

<#if errors??>
    <#list errors as error>
    <td>${error}</td>
    <br/>
    </#list>
</#if>

<div id="content">
    <fieldset>
        <legend>Add Actor</legend>
        <form action="newActor" method="post" name="actor" class="form-group">
            Name :&thinsp;<br/>
            <input type="text" title="Name" name="name"/><br/>
            DoB :<br/>
            <input type="date" pattern="yyyy-MM-dd" title="Date Of Birth" name="dateOfBirth" /><br/>
            <input type="submit" value="Save"/>
        </form>
    </fieldset>
    <br/>
</div>

</body>
</html>
