<div id="content">
    <fieldset>
        <legend>Add Movie</legend>
        <form action="newMovie" method="post" name="movie" class="form-group">
            Name :&thinsp;<br/>
            <input type="text" title="Name" name="name"/><br/>
            <#--Genre :&thinsp;<br/>
            <input type="text" title="Genre" name="genre"/><br/>-->
            Year :<br/>
            <input type="number" title="Year" name="year"/><br/>
            Price :<br/>
            <input type="number" step="0.01" title="Price" name="price"/><br/>
            Trailer :<br/>
            <input type="text" title="Trailer" name="trailerLink"/><br/>
            <input type="submit" value="Save"/>
        </form>
    </fieldset>
    <br/>
</div>
