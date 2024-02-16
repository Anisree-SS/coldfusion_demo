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
       Today date, current Month in numeric, current month in word, Last friday date, Last day of month. Show Last 5 days date & day like below. 
    </h6>
    <div>
        <h4> Dates </h4>
        <form action="dateFormate.cfm" method="post">
            <input type="submit" name="submit" value="submit">
        </form>
    </div>
    <cfif structKeyExists(form, "submit")>
        <cfset dateObj=createObject("component","components/ForDateFormate")>
        <cfset yr=dateObj.forClrDate()>
        <cfset month=dateObj.forClrDate()>
        <cfset monthNum=dateObj.forClrDate()>
        <cfset yr=dateObj.forClrDate()>
        <cfset yr=dateObj.forClrDate()>
        <cfoutput>
            <p>#dateObj.forClrDate(yr)#</p>
        </cfoutput>
    </cfif>
</body>
</html>