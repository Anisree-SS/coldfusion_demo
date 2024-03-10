<cfcomponent>
    <cffunction name="showDetails" access="public" returnType="query">
        <cfset var result= QueryNew("ID, Name, Email", "Integer, Varchar, Varchar")>
        <cfset QueryAddRow(result, 1)>
        <cfset QuerySetCell(result, "ID", 1, 1)>
        <cfset QuerySetCell(result, "Name", "John", 1)>
        <cfset QuerySetCell(result, "Email", "join@gmail.com", 1)>
        <cfset QueryAddRow(result, 2)>
        <cfset QuerySetCell(result, "ID", 2, 2)>
        <cfset QuerySetCell(result, "Name", "aniree", 2)>
        <cfset QuerySetCell(result, "Email", "anisree@gmail.com", 2)>
        <cfset QueryAddRow(result, 3)>
        <cfset QuerySetCell(result, "ID", 3, 3)>
        <cfset QuerySetCell(result, "Name", "Jenny", 3)>
        <cfset QuerySetCell(result, "Email","Jenny@gmail.com", 3)>
        <cfreturn result>
    </cffunction>
</cfcomponent>

    

