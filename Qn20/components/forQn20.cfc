<!---cfcomponent>
    <cffunction name = "check" returnType = "string"  access = "public" >
        <cfargument name="captcha" type="string" required="true">
        <cfargument name="captchaText" type="string" required="true">
        <cfif arguments.captcha EQ arguments.captchaText>
            <cfset result="Email Address successfully subscribed to our newsletter">
            <cfelse>
                <cfset result="Invalid captcha!!!!">
        </cfif>
        <cfreturn result>
    </cffunction>
</cfcomponent--->
