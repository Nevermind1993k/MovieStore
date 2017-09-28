<div id="content">
    <fieldset>
        <legend>Add Movie</legend>
        <form action="/newMovie" method="post" name="movie" class="form-group">
            Name :&thinsp; <input type="text" title="Name" name="name"/><br/>
            Genre :&thinsp;<input type="text" title="Genre" name="genre"/><br/>
            Year : <input type="number" title="Year" name="year"/><br/>
            Price :<input type="number" step="0.01" title="Price" name="price"/><br/>
            <input type="submit" value="Save"/>
        </form>
    </fieldset>
    <br/>
</div>
