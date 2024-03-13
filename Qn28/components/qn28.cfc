<cfcomponent>
    <cffunction name="checkAccess" access="public">
        <cfargument name="userName" required="true">
        <cfargument name="passwords" required="true">
        <cfquery name="checkLogin" datasource="demo">
            SELECT * FROM userTable WHERE userName = <cfqueryparam value="#form.userName#" cfsqltype="cf_sql_varchar">
            AND password = <cfqueryparam value="#form.passwords#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif checkLogin.recordCount>
            <cfset session.userid = checkLogin.userid>
            <cflocation url="admin.cfm">
        <cfelse>
            <cfoutput>Login failed. Please try again.</cfoutput>
        </cfif>
        
    </cffunction>
</cfcomponent>
