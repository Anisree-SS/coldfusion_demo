<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>document</title>
</head>
<body>
   <h6>
   Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self
Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also be shown. 
	It means, if I submit a form with 'ColdFusion', 'super', then structure should have key as 'ColdFusion' & value as 'Super'.
	Now, If I enter 'php', 'good', then structure should have both ColdFusion, php along with their values
In this task, you should show the keys in alphabetical order.


   </h6>
   <div>
        <form action="structFifth.cfm" method="post">
            <label for="key">Enter Key:</label>
            <input type="text" id="key" name="key" required>  <br>
            <label for="value">Enter value:</label>
            <input type="text" id="value" name="value" required>  <br>     
            <input type="submit" value="submit" name="submit">
        </form>
   </div>
   <div>
        <cfif structKeyExists(form, "key") and structKeyExists(form, "value")>
            <cfinvoke component="components/structFifth" method="structFifthFunction" returnvariable="keyandvalue">
                <cfinvokeargument name="key" value="#form.key#">
                <cfinvokeargument name="value" value="#form.value#">
            </cfinvoke>
            <cfdump var="#keyandvalue#">
        </cfif>
    </div>
</body>
</html>
