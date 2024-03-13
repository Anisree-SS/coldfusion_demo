<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Page</title>
</head>
<body>
    <cfset local.imgid = ids>
    <cfset local.thumpnail = createObject("component", "components/forQn14").displayDetails(id='#local.imgid#')>
    <center>
        <table>
            <tr>
                <th>Image Name</th>
                <th>Description</th>
                <th>Image</th>
            </tr>
            <cfoutput query="local.thumpnail">
                <tr>
                    <td>#imgname#</td>
                    <td>#discreption#</td>
                    <td><img width="120" height="120"  src="../Qn14/assets/#imgpath#"></td>
                </tr>
            </cfoutput>
        </table>
    </center>
</body>
</html>