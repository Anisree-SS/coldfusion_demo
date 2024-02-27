<cfcomponent>
    <cffunction name="forfind" access="public" returnType="string">
        <cfargument name="inputString" type="string" required="true">
        <cfargument name="data" type="string" required="true">
        <cfparam name="arguments.inputString" type="string">
        <cfparam name="arguments.data" type="string">
        <cfset keyword=arguments.data>
        <cfset var keywordCount = listLen(arguments.inputString, keyword)>
        <cfset var resultMessage = #keywordCount#>
        <cfreturn resultMessage>
    </cffunction>
</cfcomponent>

