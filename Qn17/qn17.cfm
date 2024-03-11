<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <!--script src="script/script.js"></script-->
    <title>Document</title>
</head>
<body>
    <h6>Create a page with text box & submit button. User can enter numeric value in the text box & click the submit button. If user entered non numeric character, page should validate user input using JS.
While clicking on submit button, page should show up 1 to given input number, odd numbers should be in blue, even numbers should be in green.

    </h6>
    <div>
        <form action="qn17.cfm" method="post">
            <span> Enter the limit : </span>
            <input type="text" name="number" id="number" >
            <br>
            <input type="submit" value="click" onclick="check()" name="submit">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "submit")>
            <cfset demoObj=createObject("component","components/qn17")>
            <cfset inputNumber = form.number>
            <cfoutput>
                <p>#demoObj.show(inputNumber)#</p>      
            </cfoutput>
        </cfif>
    </div>
</body>
</html>
