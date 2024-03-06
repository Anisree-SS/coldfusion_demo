<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Login</title>
   </head>
   <body>
      <cfset session.login=false>
      <div >
        <h6> 
            Login page with user name & password. Once a user enters the correct details, 
            it should redirect to welcome.cfm, if not, it will show an error message in the login page.
            If any one of the users, directly access the welcome.cfm without login, 
            Application should redirect the user in to log in page.In welcome page, 
            there must be a logout link, which will log out the user from the application & redirect to log in page.
         </h6>
      </div>
      <form action="qn27.cfm"  method="post" onsubmit="">
         <center>
                  <label for="userName">User Name</label>            
                  <input type="text" id="userName" name="userName">
                  
                  <label for="password">Password</label>             
                  <input  type="password" id="password" name="password" 
               
              
                  <span id="errorMsg"></span>
              
                  <input type="submit" name="submit" id="submit" >
         </center>
      </form>
      <cfif structKeyExists(form, "password")>
         <cfinvoke  component="components/forQn17" method="login" returnvariable="returnValue">
            <cfinvokeargument  name="userName"  value="#form.userName#">
            <cfinvokeargument  name="password"  value="#form.password#">
         </cfinvoke>
         <cfif returnValue>
            <script>
               document.getElementById("errorMsg").innerHTML = "";
               <cfset session.login=true>
               <cflocation url = "welcome.cfm">
            </script>
            <cfelse>
            <script>
                  <cfset session.login=false>
                     alert("Username and Password Mismatch");
            </script>
         </cfif>
         
      </cfif>
   </body>
</html>