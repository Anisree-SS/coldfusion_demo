<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleFor14.css">
    <title>Display Page</title>
</head>
<body>
    <cfset local.imgId=URL.imgId>
    <cfquery name = "displayPage" datasource = "demo">
      SELECT * FROM imgTable
      where imgId=<cfqueryparam value="#local.imgId#" cfsqltype="cf_sql_integer">
    </cfquery>

    <cfoutput query="displayPage">
      <h3>#Name#</h3>
      <br><br>
      <h5>#imgDescription#</h5>
      <img src="../Qn14/assets/#imgName#">
    </cfoutput>
</body>
</html>