<cfcomponent>
    <cffunction  name="init" access="public">
        <cfargument  name="imgname" type="any">
        <cfargument  name="discription">
        <cfargument  name="imageN">

        <cfquery datasource="demo" name="list">
            insert into imgTable (name , description, image_name) values('#arguments.imgname#', '#arguments.discription#', '#arguments.imageN#');
        </cfquery>
    </cffunction>
    <cffunction  name="displayDetails">
        <cfargument  name="id">
        <cfquery datasource="demo" name="singleimg">
            select * from imgTable  where id = '#arguments.id#';
        </cfquery>
        <cfreturn singleimg>
    </cffunction>
    <cffunction  name="thumpnail">
        <cfquery datasource="demo" name="thumpnail">
            select *from imgTable ;
        </cfquery>
        <cfreturn thumpnail>
    </cffunction>
</cfcomponent>