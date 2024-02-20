<cfcomponent>
    <cffunction name="structurefirst" access="public" returntype="any" output="true">
        <cfset myStructure = {}>
        <cfset myStructure[form.key] = form.value>
        <cfreturn myStructure>
    </cffunction>
</cfcomponent>



