<cfcomponent>
    <!---cfquery datasource="demo">
            INSERT INTO NameList (firstname, lastname)
            VALUES
            ('anisree', 's'),
            ('aneesha', 's'),
            ('aleena', 's'),
            ('arun', 's'),
            ('vinitha', 's'),
            ('rehna', 's'),
            ('athira', 's'),
            ('anandhan', 'a'),
            ('aanandh', 'a'),
            ('shajith', 'kumar')
    </cfquery--->
    <cffunction name="getAllNames" access="public" returnType="query">
        <cfquery name="allData" datasource="demo">
            SELECT * FROM NameList
        </cfquery>
        <cfreturn allData>
    </cffunction>
    <cffunction name="getFirstName" access="public" returnType="string">
        <cfargument name="n" type="numeric" required="true">
        <cfquery name="nthRow" datasource="demo">
        SELECT firstname
        FROM (
            SELECT firstname, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS row_num
            FROM NameList
        ) AS subquery
        WHERE row_num = <cfqueryparam value="#arguments.n#" cfsqltype="cf_sql_integer">
    </cfquery>
        <cfreturn nthRow.firstname>
    </cffunction>
</cfcomponent>
