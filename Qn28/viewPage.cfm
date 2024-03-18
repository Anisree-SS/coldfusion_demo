<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleOfQn28.css">
    
    <title>Document</title>
</head>
<body>
    <h2> User Page</h2>
    <div>
        <cfset local.idPage=URL.idPage>
        <cfquery name = "displayPage" datasource = "demo">
            SELECT pageName,description FROM pageTable
            where pageId=<cfqueryparam value="#local.idPage#" cfsqltype="cf_sql_integer">
        </cfquery>
            <cfoutput query="displayPage">
                <div>
                    <h3>#pageName#</h3>
                </div>
                <div>
                    <p>#description#</p>
                </div>
            </cfoutput>
        </table>
    </div>
</body>
</html>