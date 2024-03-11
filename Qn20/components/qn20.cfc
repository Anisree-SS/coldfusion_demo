<cfcomponent>
    <cffunction name="subscribe" access="public" returntype="string">
        <cfargument name="captcha" type="string" required="true">
        <cfset var result = "">
        
        <cfif arguments.captcha EQ session.captchaText>
            <cfset result = "Email Address successfully subscribed to our newsletter.">
        <cfelse>
            <cfset result = "Invalid captcha.!!!!">
        </cfif>
        
        <cfreturn result>
    </cffunction>
</cfcomponent>
