<cfcomponent>
    <cffunction name="checkMail" access="remote">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">

        <cfquery name="checkEmail" datasource="demo">
            SELECT COUNT(*) AS emailCount
            FROM mailTable
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkEmail.emailCount GT 0>
            <cfoutput>{"message":"exists"}</cfoutput>
        <cfelse>
            <cfoutput>{"message":"notexists"}</cfoutput>
            
        </cfif>   
    </cffunction>
    <cffunction name="uploadMail" access="public">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
            <cfquery datasource="demo">
                INSERT INTO mailTable (fName, email)
                VALUES (
                    <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
            <cfreturn "email uploaded successfully">
    </cffunction>
</cfcomponent>

