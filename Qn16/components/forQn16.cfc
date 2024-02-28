<cfcomponent>
    <cffunction name = "forPrint" access="public" returnType="void">
        <br>
        <br>
        <cfoutput>
            <cfset rowCount = 3>
            <cfset columnCount = 3>
            <cfset counter = 1>
            
            <cfloop index="row" from="1" to="#rowCount#">
                <cfloop index="column" from="1" to="#columnCount#">
                    #counter#
                    <cfset counter = counter + rowCount>
                </cfloop>
                <br>
                <cfset counter = row + 1>
            </cfloop>  
        </cfoutput>
    </cffunction>
</cfcomponent>