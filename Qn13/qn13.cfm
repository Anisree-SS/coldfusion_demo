<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>document</title>
</head>
<body>
    <h6>Create a page with text box & submit submit button. If you user gave “the” as input, then you need to show 
    the result as,Found the key word in 2 times - the quick brown fox jumps over the lazy dog. if input is dog then result should be,Found the key word in 1 time
     - the quick brown fox jumps over the lazy dog
    </h6>
    <div>
        <form action="qn13.cfm" method="post">
            <input type="text"  name="data"  required>
            <br>
            <input type="submit" name="submit">
            <br>
        </form>
        <cfif StructKeyExists(form, "submit")>
            <cfset inputString = "the quick brown fox jumps over the lazy dog">
            <cfset demoObj=createObject("component","components/forQn13")>
            <cfset result = demoObj.forFind(inputString,data)>
        </cfif>
        <br>
        <br>
        <cfoutput>
            <p>#result#</p>
        </cfoutput>
    </div>
</body>
</html>
