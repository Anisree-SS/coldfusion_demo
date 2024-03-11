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
    <cfset session.login = false>
    <h6> 
        In CF_DB_WordCount_1 task, rather than using a text area, you should read from an uploaded txt file
    </h6>
    <div>
        <form action="qn26.cfm" method="post" enctype="multipart/form-data">
            <span>Upload file</span>
            <br>
            <input type="file" name="file">
            <br><br>
            <input type="submit" value="Count Words">
        </form>
    </div>
    <div>
        <cfif structKeyExists(form, "file")>
            <cfset result = createObject("component", "components/qn26").countWords(form.file)>
            <cfoutput>
                </p> #result#</p>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>
