<cfcomponent>
    <cffunction name="forPrint" access="public" returnType="string" output="true">
        <cfargument name="numEnter" type="any" required="true">
        <cfif arguments.numEnter eq 5>
            <cfreturn "Very good">
        <cfelseif arguments.numEnter eq 4>
            <cfreturn "Good">
        <cfelseif arguments.numEnter eq 3>
            <cfreturn "Fair">
        <cfelseif arguments.numEnter eq 1 or arguments.numEnter eq 2>
            <cfreturn "OK">
        <cfelse>
            <cfreturn "Enter number between 1 and 5">
        </cfif>
    </cffunction>
</cfcomponent>