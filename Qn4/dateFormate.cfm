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
        <cfset lastFriday=dateObj.forLastFriday()>
        <cfset monthNumber=dateObj.forMonth()>
        <cfset lastDay=dateObj.forLastDay()>
        <cfset LastWednesday=dateObj.forLastWednesday()>
        <cfoutput>
            <p>#dateObj.forClrDate(yr)#</p>
            <p>#dateObj.forMonth(monthNumber)#</p>
            <p>#dateObj.forLastFriday(lastFriday)#</p>
            <p>#dateObj.forLastDay(lastDay)#</p>
            <p>#dateObj.forLastWednesday(LastWednesday)#</p>
        </cfoutput>
    </cfif>
</body>
</html>