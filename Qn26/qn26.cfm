<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleForQn26.css">
    <title>Login</title>
</head>
<body>
    <cfset session.login=false>
    <h6> 
        In CF_DB_WordCount_1 task, rather than using a text area, you should read from a uploaded txt file
    </h6>
    <div>
        <form action="qn26.cfm" method="post" enctype="multipart/form-data">
            <span>upload file</span>
            <br>
            <input type="file" name="file">
            <br><br>
            <input type="submit" value="Count Words">
        </form>
    </div>
    
    <div>
        <!---cfif structKeyExists(form,"submit")>
            <cfset demoObj=createObject("component","components/forQn26")>
            <cfset result=demoObj.countWord("form.file")>
            <cfoutput>
                <p>#demoObj.countWord(form.file)#</p>
            </cfoutput>
        </cfif--->
        <cfif structKeyExists(form, "file")>
        <cffile action="upload" filefield="form.file" destination="#ExpandPath("../Qn26/textFile/")#" nameconflict="makeunique">
            <cfif cffile.contentType EQ "text">
                <cfset fileContent = fileRead(cffile.clientFile)>
                <cfset wordCount = 0>
                <cfset wordList = ListToArray(fileContent, " ")>
                <cfset wordCount=ArrayLen(wordList)>
                <p> word count in the file is</p>
                <span> : </span>
                <cfdump var ="#wordCount#">
            <cfelse>
                <p>Please upload a text file.</p>
            </cfif>
        </cfif>
    </div>
</body>
</html>

