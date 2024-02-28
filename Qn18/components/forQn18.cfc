<cfcomponent>
    <cffunction name="sqlQn18" access="public" returnType="query">
        <cfset var qn18= QueryNew("ID, Name, Email", "Integer, Varchar, Varchar")>
        <cfset QueryAddRow(qn18, 1)>
        <cfset QuerySetCell(qn18, "ID", 1, 1)>
        <cfset QuerySetCell(qn18, "Name", "John", 1)>
        <cfset QuerySetCell(qn18, "Email", "join@gmail.com", 1)>
        <cfset QueryAddRow(qn18, 2)>
        <cfset QuerySetCell(qn18, "ID", 1, 2)>
        <cfset QuerySetCell(qn18, "Name", "aniree", 2)>
        <cfset QuerySetCell(qn18, "Email", "anisree@gmail.com", 2)>
        <cfset QueryAddRow(qn18, 3)>
        <cfset QuerySetCell(qn18, "ID", 1, 3)>
        <cfset QuerySetCell(qn18, "Name", "Jenny", 3)>
        <cfset QuerySetCell(qn18, "Email","Jenny@gmail.com", 3)>
        <cfreturn qn18>
    </cffunction>
</cfcomponent>

    

