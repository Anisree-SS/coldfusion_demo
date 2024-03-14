<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Document</title>
</head>
<body>
    <form action="view.cfm" method="post">
        <label>Enter the number
            <input type="text" name="idNumber">
        </label>
        <br>
        <input type="submit" value="find" name="find" name="submit">
    </form>    
    <cfif structKeyExists(form,"idNumber")>
        <cfinvoke component="viewPage" method="findData" returnvariable="keyValue">
            <cfinvokeargument name="idNumber" value="#form.idNumber#">
        </cfinvoke>
    </cfif>
    <cfdump var="#keyValue#">
</body>
</html>