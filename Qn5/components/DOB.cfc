<cfcomponent>
    <cffunction name="findUserAge" access="public" returntype="numeric" output="false">
        <cfargument name="userDob"  required="true" type="date">
        <cfreturn DateDiff("yyyy", userDob, now()) - IIf(DateCompare(DateAdd("yyyy", DateDiff("yyyy", userDob, now()), userDob), now()) gt 0, 1, 0)>
    </cffunction>
    
    <cffunction name="findMotherAge" access="public" returntype="numeric" output="false">
        <cfargument name="motherDob" required="true" type="date">
        <cfargument name="userDob"  required="true" type="date">
        <cfreturn DateDiff("yyyy", motherDob, userDob) - IIf(DateCompare(DateAdd("yyyy", DateDiff("yyyy", motherDob, userDob), motherDob), userDob) gt 0, 1, 0)>
    </cffunction>
    
    <cffunction name="remainingDateMother" access="public"  >
        <cfargument name="motherDob" required="true" type="date">
        <cfset motherAge=DateDiff("yyyy", motherDob, now()) - IIf(DateCompare(DateAdd("yyyy", DateDiff("yyyy", motherDob, now()), motherDob), now()) gt 0, 1, 0)>
        <cfset nextAge = motherAge + 1>
        <cfset currentDate=now()>
        <cfset nextBirthday = CreateDateTime(Year(currentDate), Month(motherDob), Day(motherDob), 0, 0, 0)>
      
        <cfif nextBirthday LT currentDate>
            <cfset nextBirthday = DateAdd("yyyy", 1, nextBirthday)>
        </cfif>
        <cfset remainingDaysOfMother = DateDiff("d", currentDate,nextBirthday )>
        <cfreturn remainingDaysOfMother>
    </cffunction>
    
    <cffunction name="remainingDateUser" access="public" >
        <cfargument name="userDob" type="date" required="true">
        <cfset userAge=DateDiff("yyyy", userDob, now()) - IIf(DateCompare(DateAdd("yyyy", DateDiff("yyyy", userDob, now()), userDob), now()) gt 0, 1, 0)>
        <cfset nextAge = userAge + 1>
        <cfset currentDate=now()>
        <cfset nextBirthday = CreateDateTime(Year(currentDate), Month(userDob), Day(userDob), 0, 0, 0)>
      
        <cfif nextBirthday LT currentDate>
            <cfset nextBirthday = DateAdd("yyyy", 1, nextBirthday)>
        </cfif>
        <cfset remainingDaysOfUser = DateDiff("d", currentDate,nextBirthday )>
        <cfreturn remainingDaysOfUser>
    </cffunction>

</cfcomponent>



