<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <script src="script/script.js"></script>
    <title>Document</title>
</head>
<body>
    <h6>Create a web page that will have one submit button. When submitted, the page will post to self. 
    Create a cookie named 'VisitsCounter' and every time the submit button is clicked and the page is posted, the 'VisitsCounter' should be increased by 1 and the increased value is shown on the page.
    </h6>
    <div>
        <b>VisitsCounter</b>
    </div>
    <div>
        <form action="qn19.cfm" method="post">
            <input type="submit" value="Click" name="submit">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "submit")>
            <cfset demoObj=createObject("component","components/qn19")>
            
            <cfoutput>
                <p>#demoObj.viewCount()#</p>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>
