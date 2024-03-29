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
   Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also maintained in the structure.
It means, if I submit a form with 'ColdFusion', 'super', then structure should have key as 'ColdFusion' & value as 'Super'.
Now, If I enter 'php', 'good', then structure should have both ColdFusion, php along with their values.
If I enter ColdFusion again, with different value, then the new value should replace the old value.
CFDUMP the structure.

   </h6>
   <div>
        <form action="structTrd.cfm" method="post" class="form1">
            <div>
                <label>Key </label>
                <input type="textbox" id="key" name="key">
            </div>
            <div>
                <label>Value </label>
                <input type="textbox" id="value" name="value">
            </div>
            <button class="submitbtn" type="Submit" name="submitbtn">Submit</button>
        </form>
   </div>
   <div>
        <cfif structKeyExists(form, "key") and structKeyExists(form, "value")>
            <cfinvoke component="components/structTrd" method="StructTrdFunction" returnvariable="keyandvalue">
                <cfinvokeargument name="key" value="#form.key#">
                <cfinvokeargument name="value" value="#form.value#">
            </cfinvoke>
            <cfdump var="#keyandvalue#">
        </cfif>
   </div>
</body>
</html>
