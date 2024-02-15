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
        Input for the text box is any number between 1 to 5. Based upon the user input, you should show the corresponding string. 5 is Very good. 4 is good. 3 is fair. 1 & 2 is Ok.Use cfif, cfelseif,cfelse
    </h6>
    <div>
        <form action="demo.cfm" method="post">
            <span>Enter the number:</span>
            <input type="number" name="numEnter" id="number">
            <input type="submit" name="forCheckNumber" value="Submit">
        </form>
    </div>
    <cfif structKeyExists(form, "forCheckNumber")>
        <cfset demoObj = createObject("component","components/demoForCFC")>
        <cfset x =demoObj.forPrint("form.numEnter")>
        <cfoutput>
            <p>#demoObj.forPrint(numEnter)#</p>
        </cfoutput>
    </cfif>
</body>
</html>