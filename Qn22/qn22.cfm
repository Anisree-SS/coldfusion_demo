
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <h6>Show the below json info in table format.
        Json:
        [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] 
    </h6>
    <div>
        <table>
        <thead>
            <tr>
            <td><b>Name</b></td>
            <td><b>Age</b></td>
            <td><b>Location</b></td>
            </tr>
        </thead>
        <tbody>
            <cfset jsonData ='[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] '>
            <cfset demoObj = createObject("component","components/qn22")>
            <cfoutput>
                <p>#demoObj.show(jsonData)#</p>
            </cfoutput>
        </tbody>
        </table>
    </div>
</body>
</html>
