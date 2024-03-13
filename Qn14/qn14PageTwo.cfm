<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>document</title>
  </head>
  <body>
    
    <cfset thumpnailObj = createObject("component", "components/forQn14").thumpnail()>
    <cfif thumpnailObj.recordCount GT 0>
      <cfset local.ids = thumpnailObj>
      <center>
          <table>
              <tr>
              <th>Image Name</th>
              <th>Image</th>
              </tr>
              
              <tr>
                  <td>#imgname#</td>
                  <td>
                      <form action="qn14PageThree.cfm" method="post"> 
                          <input type="hidden" name="ids" value="#thumpnailObj#">
                          <button action="" method="post"><img width="20" height="20" src="../Qn14/assets/#imgpath#">
                          </button>
                      </form>
                  </td>  
              </tr>
          </table>
      </center>
    </cfif>
  </body>
</html>