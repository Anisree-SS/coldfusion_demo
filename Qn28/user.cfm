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
        <cfquery name = "displayPage" datasource = "demo">
            SELECT pageId,pageName FROM pageTable
        </cfquery>
        <table>
            <tr>
                <th>S.No</th>
                <th>Page Name</th>
            </tr>

            <cfoutput query="displayPage">
                <tr>
                    <td>#pageId#</td>
                    <td><a href="viewPage.cfm?idPage=#pageId#">#pageName#</a></td>
                </tr>
            </cfoutput>
        </table>
    </div>
</body>
</html>