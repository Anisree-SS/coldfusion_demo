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
    <h2>
        Admin Page
    </h2>
    <div>
        <cfquery name = "displayPage" datasource = "demo">
            SELECT pageId,pageName FROM pageTable
        </cfquery>
        <table>
            <tr>
                <th>S.No</th>
                <th>Page Name</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>

            <cfoutput query="displayPage">
                <tr>
                    <td>#pageId#</td>
                    <td>#pageName#</td>
                    <td><a href="editData.cfm?idPage=#pageId#">Edit</a></td>
                    <td><a href="components/qn28.cfc?method=dataDelete&idPage=#pageId#">delete</a></td>
                </tr>
            </cfoutput>
        </table>
    </div>
    <div>
        <button type="button"><a href="addData.cfm">Add New Data</a></button>
    </div>
</body>
</html>