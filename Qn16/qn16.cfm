<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <h6>Write a CF program to print data by 3 rows and 3 columns like the example 
    </h6>
    <div>
        <form action="qn16.cfm" method="post">
            <input type="submit" name="submit" value="Click">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form,"submit")>
            <cfset demoObj=createObject("component","components/forQn16")>
            <cfset x=demoObj.forPrint()>
        </cfif>
    </div>
</body>
</html>
