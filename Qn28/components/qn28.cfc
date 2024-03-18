<cfcomponent>

    <!---login function--->

    <cffunction name="checkAccess" access="public">
        <cfargument name="userName" required="true">
        <cfargument name="passwords" required="true">
        
        <cfquery name="checkLogin" datasource="demo">
            SELECT * FROM userTable 
            WHERE userName = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
            AND password = <cfqueryparam value="#arguments.passwords#" cfsqltype="cf_sql_varchar">
        </cfquery>
        
        <cfif checkLogin.recordCount>
            <cfset session.userid = checkLogin.userid>
            
            <cfquery name="checkRole" datasource="demo">
                SELECT role FROM userTable
                WHERE userName = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
            </cfquery>
            
            <cfif checkRole.role EQ "admin" OR checkRole.role EQ "editor">
                <cflocation url="admin.cfm">
            <cfelseif checkRole.role EQ "user">
                <cflocation url="user.cfm">
            <cfelse>
                <cfoutput>Unknown role. Please contact support.</cfoutput>
            </cfif>
        <cfelse>
            <cfoutput>Login failed. Please try again.</cfoutput>
        </cfif>
    </cffunction>

    <!---insert data Function--->

    <cffunction name="addData" access="public">
        <cfargument name="titleName" required="true">
        <cfargument name="description" required="true">
        <cfquery name="dataCheck" datasource="demo">
            SELECT * FROM pageTable 
            WHERE pageName = <cfqueryparam value="#arguments.titleName#" cfsqltype="cf_sql_varchar">
        </cfquery>

         <cfif dataCheck.recordCount>
            <cfoutput> Data already present </cfoutput>
        <cfelse>
            <!--- Insert the data into the pageTable --->
            <cfquery name="insertData" datasource="demo">
                INSERT INTO pageTable (pageName, description)
                VALUES (
                    <cfqueryparam value="#arguments.titleName#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">
                )
            </cfquery>
            <cfoutput> Data inserted successfully</cfoutput>
        </cfif>
        <cfquery name="displayPage" datasource="demo">
            select pageId,pageName from pageTable;
        </cfquery>  
        <cfreturn displayPage>      
    </cffunction>


    <!---Edit data function--->


    <cffunction name="editData" access="public">
        <cfargument name="titleName" required="true">
        <cfargument name="description" required="true">
        <cfargument name="id" required="true">
        <cfquery name="dataCheck" datasource="demo">
            SELECT * FROM pageTable 
            WHERE pageName = <cfqueryparam value="#arguments.titleName#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif dataCheck.recordCount>
            <cfquery name="updateData" datasource="demo">
                UPDATE pageTable SET 
                pageName = <cfqueryparam value="#arguments.titleName#" cfsqltype="cf_sql_varchar">,
                description = <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">
                WHERE pageName=<cfqueryparam value="#arguments.titleName#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfreturn "Data updated successfully">
        <cfelse>
            <cfreturn "Data is not present">
        </cfif>
    </cffunction>
</cfcomponent>

