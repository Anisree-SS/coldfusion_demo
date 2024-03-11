<cfcomponent>
    <cffunction  name="login" access="public" returntype="boolean">
        <cfargument  name="userName" type="string" required="true"> 
        <cfargument  name="password" type="string" required="true">    
        <cfif #arguments.password#=="admin" && #arguments.userName#=="admin">            
            <cfreturn true>
        <cfelse>           
            <cfreturn false>
        </cfif>
    </cffunction>
</cfcomponent>