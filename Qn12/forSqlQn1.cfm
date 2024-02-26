<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>document</title>
</head>
<body>
    <h6>In SQL create a table with firstname & last name columns. insert 10 records into that table. 
There is no primary key & numberic column in this table. Create a page with text box & submit button.  
User can enter numeric value less than 10. While click on submit, you should show all data from table 
as well as show Query’s nth row first name column without looping. Here n is value of the user input.
    </h6>
    <form action="forSqlQn1.cfm" method="post">
        Enter a number less than 10: <input type="number" name="n" required>
        <input type="submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "n")>
        <cfset namesObj = createObject("component", "components/sqlQn1")>
        <cfset allData = namesObj.getAllNames()>
        
        <h5>All Data</h2>
        <cfoutput query="allData">
            #firstname# #lastname# <br>
        </cfoutput>
        
        <h5>First Name of nth Row</h2>
        <cfoutput>#namesObj.getFirstName(form.n)#</cfoutput>
    </cfif>
</body>
</html>
