<cfcomponent>
   <cffunction name="show" access="public">
        <cfargument name="jsonData" required="true">
        <cfset var row = "">
        <cfset var json = deserializeJSON(arguments.jsonData)>
        <cfloop array="#json#" index="person">
            <cfset row &= "<tr><td>#person.Name#</td><td>#person.Age#</td><td>#person.LOCATION#</td></tr>">
        </cfloop>
        <cfreturn row>
   </cffunction>
</cfcomponent>
