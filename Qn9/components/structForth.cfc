
<cfcomponent>
    <cffunction name="structForthFunction" access="public">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfif not structKeyExists(session, "structForth")>
            <cfset session.structForth = structNew()>
        </cfif>
        <cfset result = structNew()>
        <cfif StructKeyExists(session.structForth, arguments.key)>
            <cfif structKeyExists(session.stackValue,"#arguments.key#")>
                <cfdump var=" The Key #arguments.key# Already Exists" abort>
            <cfelse>
               <cfset session.stackValue["#arguments.key#"] = "#arguments.value#">	
		       <cfreturn session.stackValue>
            </cfif>
        <cfelse>
            <cfset session.stackValue["#arguments.key#"] = "#arguments.value#">	
		    <cfreturn session.stackValue>
        </cfif>
        
    </cffunction>
</cfcomponent>
