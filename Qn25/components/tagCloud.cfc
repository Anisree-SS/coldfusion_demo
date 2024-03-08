<cfcomponent>
    <cffunction name="CfAndDb" access="public" type="any">
        <cfargument name="datas">
            <cfif len(trim(arguments.datas))>
                <cfset words = listToArray(arguments.datas, " ")>
                <cfloop array="#words#" index="word">
                <!--- Insert each word into the database --->
                    <cfquery datasource="demo" name="insertWord">
                        INSERT INTO tableForQn25(data) 
                        VALUES (<cfqueryparam value="#word#" cfsqltype="CF_SQL_VARCHAR">)
                    </cfquery>
                </cfloop>
            </cfif>
            <cfset msg="success">
            <cfreturn msg>
    </cffunction>
</cfcomponent>