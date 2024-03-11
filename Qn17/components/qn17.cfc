<cfcomponent>
    <cffunction name = "show" access="public" returnType="string" output="true">
        <cfargument name="number" type="any" required="true">
        <cfset var num = Int(arguments.number)>
        <cfset result =''>
        <cfloop from="1" to="#num#" index="i">
            <cfset color = (i MOD 2 EQ 0) ? "green" : "blue">
            <span style="color: #color#;">#i#</span>
            <cfif i neq num>
                <cfset result &= " " & result>
            </cfif>
        </cfloop>
        <cfreturn result>
    </cffunction>
</cfcomponent>
    

