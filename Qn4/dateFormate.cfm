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

    <!---form action="dateFormate.cfm" method="post">
        <input type="submit" value="show" name="submit">        
    </form>
    <cfif StructKeyExists(form, "submit")>
        <cfset 
    </cfif--->
        <cfscript>
            myDatetime = DateFormat(now(),'yyyy-mmm-dd');
            today = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
            styles = ["color: green;", "color: orange;", "color: darkgreen", "color: black;", "color: blue;", "color:
            darkred;", "color: red;"];

            day = (dayOfWeek(myDatetime, "iso"));
            month = Month(myDatetime);
            myLocale=getLocale();
            monthinword = MonthAsString(month , myLocale);
            daysinmonth = DaysInMonth(myDatetime);

            writeOutput("Today's date : " & myDatetime &"<br /> ")
            writeOutput("<p style='" & styles[day] & "'>#today[day]#<p>")
            writeOutput("Current Month in numeric : " & month &"<br /><br>")
            writeOutput("Current month in word : " & monthinword &"<br /><br>")
            writeOutput("last day of the month : " & daysinmonth & " - " & DateFormat(myDatetime, 'mmm') &"-" & Year(myDatetime) & "<br /><br>")

            for (i = daysinmonth; i >= 1; i--) {
                dateOb = createDate(year(myDatetime), month(myDatetime), i)
                k=(dayOfWeek(dateOb, "iso"));
                    if (k == 5) {
                    writeOutput( "last Friday of the month : " & i & " - " & DateFormat(myDatetime, 'mmm') & " - " & Year(myDatetime) & "<br /><br>")
                    break;
                }
            }

            writeOutput("Last 5 Days of the Month</br>")
                counter = 0;
            for (i = daysinmonth; i >= 24; i--) {
                dateObj = createDate(year(myDatetime), month(myDatetime), i)
                j=dayOfWeek(dateObj, "iso");
                writeOutput(dateFormat(dateObj, "dd/mmm/yyyy")&"<span style='" & styles[j] & "'>#today[j]#</span>" &"<br>");
                    if (counter >= 4) {
                        break;
                    }
                counter++;
            }
        </cfscript>
</body>
</html>