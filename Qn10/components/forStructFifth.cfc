<cfcomponent>
    <cffunction name="forFfthStruct" access="public">
        <cfargument name="key">
        <cfargument name="value">
        <cfif not structKeyExists(session, "structFifth")>
            <cfset session.structFifth = structNew()>
        </cfif>
            <cfset session.structFifth["#arguments.key#"] = "#arguments.value#">	
            <cfset keysArray = []>
            <cfloop collection="#session.structFifth#" item="key">
                <cfset arrayAppend(keysArray, key)>   
            </cfloop>
            <cfset arraySort(keysArray, "textnocase", "asc")>
            <cfset sortedStruct = {}>
            <cfloop array="#keysArray#" index="key">
                <cfset sortedStruct[key] = session.structFifth[key]>
            </cfloop>
            <cfdump var="#sortedStruct#">

		<cfreturn session.structFifth>
    </cffunction>
</cfcomponent>
        