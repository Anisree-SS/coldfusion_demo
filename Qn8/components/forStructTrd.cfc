
<cfcomponent>
    <cffunction name="forStructTrdFunction" access="public">
        <cfargument name="key">
		<cfargument name="value">
        <cfset session.stackValue["#arguments.key#"] = "#arguments.value#">	
		<cfreturn session.stackValue>
    </cffunction>
</cfcomponent>
