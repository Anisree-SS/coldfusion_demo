
<cfcomponent>
    <cffunction name="forStructTrdFunction" access="public" >
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfif not structKeyExists(session, "myStructure")>
            <cfset session.myStructure = structNew()>
        </cfif>
        <cfset session.myStructure[arguments.key] = arguments.value>
    </cffunction>
</cfcomponent>
