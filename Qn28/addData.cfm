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
        Add Data
    </h2>
    <div>
        <form action="addData.cfm" method="post">
            <label>Title : 
                <input type="text" name="pageName" required>
            </label>
            <br><br>
            <label>Description : 
                <input type="text" name="description" required> 
            </label>
            <br><br>
            <input type="submit" name="submit" value="ADD">
        </form>
        <cfif structKeyExists(form,"pageName") and structKeyExists(form,"description")>
            <cfset demoObj=createObject("component","components/qn28").addData(form.pageName,form.description)>

        </cfif>
        <!---<cfset variable=demoObj.addData(form.pageName,form.description)>--->
    </div>
    <button type="button"><a href="admin.cfm">Back</a></button>
</body>
</html>