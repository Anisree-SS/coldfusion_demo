<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn20.css">
    <title>Document</title>
</head>
<body>
    <h6>Create a page with two textboxes (captcha and email). Create captcha using cfimage tag. To validate the fields 
    captcha (text validation) and email (email validation) using server-side validation. Once the user enters the captcha 
    & clicks on submit, then check the entered text is equal to captcha text. If correct, the page should show the 
    message "Email Address successfully subscribed to our newsletter".
    </h6>
    <div>
        <cfif StructKeyExists(form, "submit")> 
            <cfset captchaObj=createObject("component","components/qn20")>
            <cfoutput>
                <p>#captchaObj.subscribe(form.captcha,session.captchaText)#</p>
            </cfoutput>
        </cfif>
    </div>
    <div>
        <form action="qn20.cfm" method="post">
            <label for="captcha">Enter Captcha:</label>
            <input type="text" name="captcha" required>
            <br>
            <cfset session.captchaText = RandRange(1000, 9999)>
            <cfimage action="captcha" height="35" text="#session.captchaText#">
            
            <br>
            <label for="email">Email Address:</label>
            <input type="email"  name="email" required>
            <br>
            <input type="submit" value="Subscribe" name="submit">
        </form>
    </div>
</body>
</html>

