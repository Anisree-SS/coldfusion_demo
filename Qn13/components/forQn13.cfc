<cfcomponent>
    <cffunction name="forfind" access="public" returnType="string">
        <cfargument name="sentence">
        <cfargument name="word">
        <cfset sentence=#arguments.sentence#> 
        <cfset wordCount = 0>
        <cfset wordList = ListToArray(sentence, " ")>
        <cfloop from="1" to="#ArrayLen(wordList)#" index="i">
            <cfif CompareNoCase(wordList[i], #arguments.word#) EQ 0>
                <cfset wordCount = wordCount + 1>
            </cfif>
        </cfloop>
        <cfreturn wordCount>
    </cffunction>
</cfcomponent>

