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
    
    <cffunction name="remainingDateMother" access="public" returntype="numeric" output="false">
        <cfargument name="remainingUser" required="true" type="date">
        <cfreturn DateDiff("q", DateAdd("yyyy", IIf(DateCompare(DateAdd("d", -1, remainingUser), Now()) gt 0, 0, 1), remainingUser),Now())>
    </cffunction>
    
    <cffunction name="remainingDateUser" access="public" returntype="numeric" output="false">
        <cfargument name="dob" type="date" required="true">
        <cfreturn DateDiff("q", DateAdd("yyyy", IIf(DateCompare(DateAdd("d", -1, dob), Now()) gt 0, 0, 1), dob), Now())>
    </cffunction>

</cfcomponent>



