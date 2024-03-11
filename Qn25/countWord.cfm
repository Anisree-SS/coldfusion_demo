<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleOfQn25.css">
    <title>Document</title>
</head>
<body>
    <h6>
            ColdFusion & DB
    </h6>
    <div>
        <form action="countWord.cfm" method="post">
            <span>Enter the data </span>
            <input type="text" name="data" >
            <br>
            <br>
            <input type="submit" value="submit" name="submit">
        </form>
    </div>
    <div>
        <cfif structKeyExists(form, "submit")>
            <cfinvoke component="components/tagCloud" method="dataCount" returnvariable="keyandvalue">
                <cfinvokeargument name="data" value="#form.data#">
            </cfinvoke>
            <!---cfdump var="#keyandvalue#"--->
            <!--- Sort the word occurrences data by count in descending order --->
         
            <cfset sortedData = structSort(keyandvalue, "numeric", "desc")>

            
            
            <!--- Loop through the sorted data and append each word and its count to sortedWords --->
            <cfset sortedWords=[]>
            <cfloop array="#sortedData#" index="word">
                <cfset arrayAppend(sortedWords, [word, keyandvalue[word]])>
            </cfloop>
            
            <!--- Output word occurrences if sortedWords is not empty --->

            
            
            <cfif arrayLen(sortedWords)>
                <ul>
                    <cfloop array="#sortedWords#" index="word">
                        <cfoutput>
                        <p>#word[1]# (#word[2]#)</p>
                        </cfoutput>
                    </cfloop>
                </ul>
            <cfelse>
                <p>No words to display.</p>
            </cfif>
            
        </cfif>
    </div>
</body>
</html>