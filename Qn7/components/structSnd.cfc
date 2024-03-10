<cfcomponent>
    <cffunction name="structSndFuntion" access="public" returntype="any" output="true">
        <cfargument name="key">
        <cfargument name="value">  
        
        
        <cfif not structKeyExists(session, "structSnd")>
            <cfset session.structSnd = structNew()>
        </cfif>
        
        <cfset structInsert(session.structSnd, arguments.key, arguments.value)>
        <cfreturn session.structSnd>
    </cffunction>
</cfcomponent>

        

