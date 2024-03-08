<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <h6>
            ColdFusion & DB
    </h6>
    <div>
        <form action="Qn25.cfm" method="post">
            <span></span>
            <input type="text" name="data" >
            <input type="submit" value="submit" name="submit">
        </form>
    </div>
    <cfif structKeyExists(form, "submit")>
        <cfset demoObj=createObject("component","components/tagCloud")>
        <cfoutput>
            <p>#demoObj.CfAndDb(form.data)#</p>
        </cfoutput>
    </cfif>
</body>
</html>