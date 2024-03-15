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
            Edit Page
        </h2>
    <cfoutput>
        <div>
            <form action="editData.cfm" method="post">
                <label>Title : </label>
                <input type="text" name="pageName">
                <br><br>
                <label>Description : </label>
                <input type="text" name="description"> 
                <br><br>
                <input type="submit" name="submit" value="Edit">
                
                <input type="numeric" value="#URL.idPage#" name="pageId" hidden>
            </form>
        </div>
        <div>
            <cfif structKeyExists(form,"pageName")>
                <cfset local.demoObj=createObject("component","components/qn28").dataEdit(form.pageName,form.description,form.pageId)>
            </cfif>
        </div>
    </cfoutput>

    <button type="button"><a href="admin.cfm">Back</a></button>
</body>
</html>