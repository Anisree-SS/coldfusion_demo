<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>document</title>
</head>
<body>
    <h6>
        Create a cfm page with a function named multiply. It should give results for the following function calls. 
    </h6>

    <cffunction name="multiply" returntype="numeric" access="public">
        <cfargument name="numbers" type="numeric[]" required="true">
            <cfset var result = 1>
            <cfloop array="#arguments.numbers#" index="num">
                <cfset result =result*num>
            </cfloop>
        <cfreturn result>
    </cffunction>

    <cfset res = multiply([1, 2])>
    <cfdump var="#res#">

    <cfset res = multiply([1, 2, 3])>
    <cfdump var="#res#">

    <cfset res = multiply([1, 2, 3, 4])>
    <cfdump var="#res#">

</body>
</html>
