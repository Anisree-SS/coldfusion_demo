<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleOfQn28.css">
    <!---<script src="./script/jquery.min.js"></script>--->
    <title>Document</title>
</head>
<body>
    <h6>simple CMS</h6>
    <div>
        <form action="login.cfm" method="post">
            <label>User name:
                <input type="text" name="userName" id="name">
            </label>
            <br>
            <br>
            <label>Password
                <input type="password" name="passwords" id="password">
            </label>
            <br>
            <br>
            <input type="submit" value="submit">
        </form>
    </div>
    <div>
    <cfif structKeyExists(form,"userName") and structKeyExists(form,"passwords")>
            <cfinvoke component="components/qn28" method="checkAccess">
                <cfinvokeargument name="userName" value="#form.userName#">
                <cfinvokeargument name="passwords" value="#form.passwords#">
            </cfinvoke>
        </cfif>
    </div>
</body>
</html>
