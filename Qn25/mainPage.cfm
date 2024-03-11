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
        <form action="mainPage.cfm" method="post">
            <span>Enter the data</span>
            <input type="text" name="data" >
            <br>
            <br>
            <input type="submit" value="submit" name="submit">
        </form>
    </div>
    <div>
        <cfif structKeyExists(form, "submit")>
            <cfset demoObj=createObject("component","components/tagCloud")>
            <cfoutput>
                <p>#demoObj.CfAndDb(form.data)#</p>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>