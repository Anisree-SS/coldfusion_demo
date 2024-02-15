<cfcomponent>
    <cffunction name="forContinue" access="public" returnType="string" output="true">        
        <cfargument name="arrayNumber"  required="true">
        <cfset result=[]>
        <cfset arrayNumber=listToArray(argumenet.arrayNumber)>
        <cfloop>
            <cfif argumenet.arrayNumber mod 3 neq 0>
                <cfcontinue>
            <cfelse>
                <cfset arrayAppend(result,argumenet.arrayNumber)>                
            </cfif>
        </cfloop>
        <cfreturn left(result,len(result)-1)>
    </cffunction>
</cfcomponent>