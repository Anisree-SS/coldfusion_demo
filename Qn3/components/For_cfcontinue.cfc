<cfcomponent>
    <cffunction name="forContinue" access="public" returnType="string" output="false">        
        <cfargument name="arrayNumber" required="true">
        <cfset var result = []>
        <cfset var localArrayNumber = listToArray(arguments.arrayNumber)>
        <cfloop index="i" from="1" to="#arrayLen(localArrayNumber)#">
            <cfif localArrayNumber[i] mod 3 neq 0>
                <cfcontinue>
            </cfif>
            <cfset arrayAppend(result, localArrayNumber[i])>                
        </cfloop>
        <cfreturn arrayToList(result)>
    </cffunction>
</cfcomponent>
