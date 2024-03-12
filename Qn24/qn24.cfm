<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleOfQn24.css">
    <!--script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script-->
    <script src="./script/jquery.min.js"></script>
    <script src="./script/validation.js"></script>
    <title>Document</title>
</head>
<body>
    <h6>Database using Ajax</h6>
    <div>
        <form method="post" action="qn24.cfm">
            <label>First Name:</label>
            <input type="text" name="name" id="name">
            <br>
            <label>Email</label>
            <input type="email" name="email" id="email">
            <button type="button" id="check">Check</button>
            <br>
            <p id="error"></p>
            <input type="submit" id="submitButton" name="submit" value="Submit" disabled>
        </form>
    </div>
    <!---<div>
        <cfif structKeyExists(form, "check")>
            <cfinvoke component="components/qn24" method="checkMail" returnvariable="nameAndEmail">
                <cfinvokeargument name="name" value="#form.name#">
                <cfinvokeargument name="email" value="#form.email#">
            </cfinvoke>
        </cfif>
    </div>--->
</body>
</html>