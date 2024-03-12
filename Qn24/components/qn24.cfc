<cfcomponent>
    <cffunction name="checkMail" access="public">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">

        <cfquery name="checkEmail" datasource="demo">
            SELECT COUNT(*) AS emailCount
            FROM mailTable
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        
        <cfif checkEmail.emailCount gt 0>
            <cfoutput>{"message":"exists"}</cfoutput>
            <cfdump var = "message:exists">
        <cfelse>
            <cfquery datasource="demo">
                INSERT INTO mailTable (fName, email)
                VALUES (
                    <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
            
            <cfoutput>{"message":"notexists"}</cfoutput>
            <cfdump var= "message:not exists">
        </cfif>
        
        <cfreturn "Successfully subscribed!">
    </cffunction>
</cfcomponent>
