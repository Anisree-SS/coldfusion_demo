<cfcomponent>
    <!---read data from user--->
    <cffunction  name="imgDisplay" access="public">
        <cfargument  name="imageName" required="true">
        <cfargument  name="description" required="true">
        <cfargument  name="imageFile" required="true" type="any">
        <cfset local.path = ExpandPath("../Qn14/assets/")>
        <cffile action ="upload" destination ="#local.path#" nameConflict ="MakeUnique">
        <cfset local.image = cffile.clientFile>
        <!---<cfdump var="#local.image#" abort>--->
        <!---Enter data into db--->
        <cfquery name="imgList" datasource="demo" >
            insert into imgTable (Name , imgDescription, imgName) values('#arguments.imageName#', '#arguments.description#','#local.image#');
        </cfquery>
        <cfquery name="pagelist" datasource="demo">
            select imgId from imgTable
            where imgName=<cfqueryparam value="#local.image#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url ="qn14PageTwo.cfm?imgId=#pagelist.imgId#">
    </cffunction>

</cfcomponent>