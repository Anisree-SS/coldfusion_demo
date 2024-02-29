
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <h6>Create a birthday wishes page which contains the following fields.
        Birthday Baby Name: Text box
        His Email Id :	Text box
        Birthday Wishes: Text area
        Greeting image : File upload field
        While clicking on the submit, it should send greeting mail to the birthday guy’s mail id. 
        Greeting images should be in attachment along with mail.
    </h6>
    <div>
        <form action="qn21.cfm" method="post" enctype="multipart/form-data">
            <span>Birthday Baby Name</span>
            <input type="text" name="fname" required>
            <br>
            <br>
            <span>Email Id to send</span>
            <input type="email" name="email" required>
            <br>
            <br>
            <span>Birthday Wishes</span>
            <input type="textarea" name="wish" required>
            <br>
            <br>
            <span>Greeting image</span>
            <input type="file"  name="greeting" accept="image/*" required>
            <br>
            <br>
            <input type="submit" name="submit" value="Send">
        </form>
    </div>
    <cfif StructKeyExists(form, "submit")>
        <cfset demoObj=createObject("component","components/forQn21")>
        <cfset x=demoObj.send(form.email,form.wish,form.greeting)>
        <cfoutput>
           <p>#demoObj.send("form.email","form.wish","form.greeting")#</p>
        </cfoutput>
    </cfif>
    
</body>
</html>
