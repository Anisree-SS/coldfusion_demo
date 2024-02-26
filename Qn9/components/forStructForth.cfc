
<cfcomponent>
    <cffunction name="forStructForthFunction" access="public">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfif not structKeyExists(session, "structForth")>
            <cfset session.structForth = structNew()>
        </cfif>
        <cfset result = structNew()>
        <cfif StructKeyExists(session.structForth, arguments.key)>
            
            <cfif session.structForth[arguments.key] eq arguments.value>
               
                <cfset result[arguments.key] = "This key-value pair already exists">
            <cfelse>
               
                <cfset result[arguments.key] = "This key already exists with a different value">
            </cfif>
        <cfelse>
            <cfset structInsert(session.structForth, arguments.key, arguments.value)>
            <cfset result[arguments.key] = "Key-value pair added successfully">
        </cfif>
        
        <cfreturn result>
    </cffunction>
</cfcomponent>
