<!---cfcomponent>
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
</cfcomponent--->

<components>
    <cffunction name="forfind" access="public" returnType="string">
        <cfargument name="inputString" type="string" required="true">
        <cfargument name="data" type="string" required="true">
        <cfparam name="arguments.inputString" type="string">
        <cfparam name="arguments.data" type="string">
        <cfset keyword=arguments.data>
        <cfset occurrences = 0>
        <cfset match = reFindNoCase(keyword, inputString, 1, true)>
        <cfif IsArray(match) and ArrayLen(match) GT 0>
            <cfloop condition="structKeyExists(match, 'pos')">
                <cfset occurrences++>
                <cfset match = reFindNoCase(keyword, arguments.inputString, match.pos + match.len, true)>
            </cfloop>
            <cfelse>
                <cfset match="not fount">
     
        </cfif>
        <cfreturn occurrences>
    </cffunction>
</components>


