<cfcomponent>
    <cffunction name="viewCount" access="public" returnType="numeric">
        <cfset var visit = 0>
        <cfif isDefined("cookie.VisitsCounter")>
            <cfset visit = cookie.VisitsCounter>
        </cfif>
        <cfset visit +=1 >
        <cfcookie name="VisitsCounter" value="#visit#">
        <cfreturn visit>
    </cffunction>
</cfcomponent>


    

