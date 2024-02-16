<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <h6>
        Create a page with text box & submit button. Input for the text box is 3,8,9,11,12
        While clicking on submit, the result page should show numbers divided by 3. So the result must be 3,9,12. Should use cfcontinue in the appropriate place.
    </h6>
    <div>
        <form action="forCfcontinue.cfm" method="post">
            <span> Enter the numbers</span>
            <input type="text" name="arrayNumber" id="numbers">
            <br>
            <div>
                <input type="submit" value="Submit" name="submit">
            </div>
        </form>
    </div>
    <cfif structKeyExists(form, "submit")>
        <cfif form.arrayNumber neq "">
            <cfset forContinueObj = createObject("component", "components/For_cfcontinue")>
            <cfset result = forContinueObj.forContinue(form.arrayNumber)>
            <p>Numbers divisible by 3 are:</p>
            <cfoutput>
                <p>#forContinueObj.forContinue(result)#</p>
            </cfoutput>
        </cfif>
    </cfif>
</body>
</html>
