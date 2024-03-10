<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>document</title>
</head>
<body>
    <h6>Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self
Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. CFDUMP the structure.
</h6>
    <div>
        <form action="structFrt.cfm" method="post">
            <label for="key">Enter Key:</label>
            <input type="text" id="key" name="key" required><br>
            <label for="value">Enter Value:</label>
            <input type="text" id="value" name="value" required><br>
            <input type="submit" value="Submit">
        </form>
    </div>
    <cfif structKeyExists(form, "key") and structKeyExists(form, "value")>
        <cfset structFrtObj=CreateObject("component","components/StructFrt")>
        <cfset x=structFrtObj.structurefirst(form.Key)>
        <cfdump var="#x#">
    </cfif>
</body>
</html>
