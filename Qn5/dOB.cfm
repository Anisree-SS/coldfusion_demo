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
        Get user & his mother date of birth. show users age & At what age his mother delivered him. Tell him how many days are remaining for his & his mother’s birthday.
    </h6>
    <div>
        <form action="dOB.cfm" method="post">
            <span>Enter your DOB</span>
            <input type="date" name="userDob">
            <br>
            <span>Enter your mothers DOB</span>
            <input type="date" name="motherDob">
            <br>
            <input type="submit" name="submit" value="submit">
        </form>
    </div>
    <cfif structKeyExists(form,"submit")>
        <cfset dateObj=createObject("component","components.forDOB")>
        <cfset forAge=dateObj.findUserAge(form.userDob)>
        <cfset remainingDaysOfUser=dateObj.remainingDateUser(form.userDob)>
        <cfset remainingDaysOfMother=dateObj.remainingDateMother(form.motherDob)>
        <cfset forMotherAge=dateObj.findMotherAge(form.motherDob,form.userDob)>
        <cfoutput>
            <p>User's Age: #forAge#</p>
            <p>Age at which mother delivered the user: #forMotherAge#</p>
            <p>Days remaining for user's birthday: #remainingDaysOfUser#</p>
            <p>Days remaining for mother's birthday: #remainingDaysOfMother#</p>
        </cfoutput>
    </cfif>
</body>
</html>
