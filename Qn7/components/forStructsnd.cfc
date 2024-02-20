<cfcomponent>
    <cffunction name="structureSnd" access="public" returntype="any" output="true">
        <cfset myStructure = {}>
        <cfset myStruct={}>
        <cfset myStructure[form.key] = form.value>
        <cfset StructAppend(myStruct,myStructure,true)>
        <cfreturn myStruct>
    </cffunction>
</cfcomponent>
        

