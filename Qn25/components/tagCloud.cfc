<cfcomponent>
    <cffunction name="CfAndDb" access="public" type="any">
        <cfargument name="datas">
            <cfquery name="checkQuery" datasource="demo">
                SELECT COUNT(*) AS dataCount
                FROM dataTable
                WHERE data = <cfqueryparam value="#arguments.datas#" cfsqltype="cf_sql_varchar">
            </cfquery>

            <cfif checkQuery.dataCount EQ 1>
                <!--- Data already exists, display a message or take appropriate action --->
                <cfreturn "Data already exists. No changes were made.">
                <cfelse>
                    <!--- Data does not exist, proceed with the insertion --->
                    <cfif len(trim(arguments.datas))>
                        <cfset words = listToArray(arguments.datas, " ")>
                            <cfloop array="#words#" index="word">
                            <!--- Insert each word into the database --->
                                <cfquery datasource="demo" name="insertWord">
                                    INSERT INTO dataTable(data) 
                                    VALUES (<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">)
                                </cfquery>
                            </cfloop>
                    </cfif>
                    <cfreturn "Data inserted successfully">
            </cfif>
    </cffunction>



    <cffunction name="dataCount" access="public" returntype="any">
        <cfargument name="data" type="string" required="true">
        
        <cfset wordCounts = {}>

        <!--- Split the input data into individual words --->
        <cfset words = reMatch("[a-zA-Z]+", arguments.data)>

        <!--- Loop through the words and update the count in the structure --->
        <cfloop array="#words#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(wordCounts, word)>
                    <cfset wordCounts[word] = wordCounts[word] + 1>
                <cfelse>
                    <cfset wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
       <cfreturn wordCounts>

         <!--- start--->
             <!---<cfset sortedData = structSort(wordCounts, "numeric", "desc")>
            <cfset sortedWords=[]>
            <cfloop array="#sortedData#" index="word">
                <cfset arrayAppend(sortedWords, [word, wordCounts[word]])>
            </cfloop>
            <cfreturn sortedWords> --->
            
            
        <!--- end--->

        
    </cffunction>
</cfcomponent>



