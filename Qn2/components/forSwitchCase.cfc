<cfcomponent>
    <cffunction name="forPrint" access="public" returnType="string" output="true">
        <cfargument name="numEnter" required="true">
        <cfswitch expression="#numEnter#">
            <cfcase value="5"><cfreturn "Very good"></cfcase>
            <cfcase value="4"><cfreturn "good"></cfcase>
            <cfcase value="3"><cfreturn "Fair"></cfcase>
            <cfcase value="2"><cfreturn "ok"></cfcase>
            <cfcase value="1"><cfreturn "ok"></cfcase>
            <cfdefaultcase><cfreturn "Enter value from 1 to 5"></cfdefaultcase>
        </cfswitch>
    </cffunction>
</cfcomponent>