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
       In SQL create a table with firstname & last name columns. insert 10 records into that table. 
There is no primary key & numberic column in this table. Create a page with text box & submit button.  
User can enter numeric value less than 10. While click on submit, you should show all data from table 
as well as show Query’s nth row first name column without looping. Here n is value of the user input.
    </h6>
    <div>
        <form>
            <label for="key">Enter number less than 10 :</label>
            <input type="text"  name="data" required>  <br>
            <input type="submit" value="submit">
        </form>
    <cfif structKeyExists(form, "data")>
        <cfset demoObj = createObject("component","components/sqlQn1")>
        <cfset x =demoObj.forPrint("form.data")>         
    </cfif>    
    </div>
</body>
</html>
