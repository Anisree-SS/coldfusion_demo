<cfcomponent>
    <cffunction name="countWord" access="public">
    <cfargument name="file"
    <cffile action="upload" filefield="arguments.file" destination="#ExpandPath("../Qn26/textFile/")#" nameconflict="makeunique">
            <cfif cffile.contentType EQ "text">
                <cfset fileContent = fileRead(cffile.clientFile)>
                <cfdump var = "#fileContent#">
                <cfset wordCount = 0>
                <cfset wordList = ListToArray(fileContent, " ")>
                <cfset wordCount=ArrayLen(wordList)>
                <cfreturn wordCount>
            <cfelse>
                <p>Please upload a text file.</p>
            </cfif>
</cfcomponent>