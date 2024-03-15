<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./style/styleFor14.css">
    <title>document</title>
  </head>
  <body>
  <div>
  <h4>Page List</h4>
 </div>
 <div>
    <cfset local.imgId=URL.imgId>
    <cfquery name = "displayPage" datasource = "demo">
      SELECT imgName FROM imgTable
      where imgId=<cfqueryparam value="#local.imgId#" cfsqltype="cf_sql_varchar">
    </cfquery>

    <cfoutput query="displayPage">
      <a href="qn14PageThree.cfm?imgId=#imgId#">#imgName#</a>
      <img width="20" height="20" src="../Qn14/assets/#imgName#">
      <br><br>
    </cfoutput>
  </div>
  </body>
</html>