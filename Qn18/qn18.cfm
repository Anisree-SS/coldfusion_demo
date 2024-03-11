<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <script src="script/script.js"></script>
    <title>Document</title>
</head>
<body>
    <h6>Need to create a query data type variable manually with out using cfquery tag. Need to use neccesary query functions.
        Query will have 3 columns
        ID - Number 
        Name - String
        email	- String
        This Query variable should have 3 rows of data.
    </h6>
    <div>
        <cfset demoObj=createObject("component","components/qn18")>
        <cfset x=demoObj.showDetails()>
        <cfoutput>
            <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
            <cfloop query="#x#">
                <tr>
                    <td>#ID#</td>
                    <td>#Name#</td>
                    <td>#Email#</td>
                </tr>
            </cfloop>
        </table>
        </cfoutput>
    </div>
</body>
</html>
