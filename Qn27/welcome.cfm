<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
   </head>
   <body>
      <cfif session.login>
               <a href="qn27.cfm">Logout</a>
         <div>
            <p> 
              welcome!!!!!!!!!
            </p>
         </div>
         <cfelse>
         <cflocation 
            url = "qn27.cfm" 
            >
      </cfif>
   </body>
</html>