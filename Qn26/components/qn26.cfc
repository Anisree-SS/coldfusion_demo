<cfcomponent>
    <cffunction name="countWords" access="public">
        <cfargument name="file" type="any" required="true">
        
        <cfset var response = {}>
        
        <cffile action="upload" filefield="form.file" destination="#ExpandPath("../Qn26/textFile/")#" nameconflict="makeunique">
        
        <cfif cffile.contentType EQ "text">
            <cfset fileContent = fileRead(cffile.clientFile)>
            <cfset wordList = ListToArray(fileContent, " ")>
            <cfset wordCount = ArrayLen(wordList)>
            <cfreturn wordCount>
        <cfelse>
            <cfreturn "upload a text file">
        </cfif>
        
        <cfreturn response>
    </cffunction>
</cfcomponent>
