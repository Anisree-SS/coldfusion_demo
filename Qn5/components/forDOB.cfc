<cfcomponent>
    <cffunction name="findUserAge" access="public" returntype="string" output="true">
        <cfargument name="userDob"  required="true">
        <cfset yearOfUser=userDob>
        <cfset diff= DateDiff("yyyy",yearOfUser,now())>
        <cfreturn #diff#>
    </cffunction>
    <cffunction name="findMotherAge" access="public" returntype="string" output="true">
        <cfargument name="motherDob" required="true">
        <cfset yearOfMother=motherDob>
        <cfset diff=DateDiff("yyyy",yearOfMother,now())>
        <cfreturn #diff#>
    </cffunction>
    <cffunction name="remainingDateUser" access="public" returntype="string" output="true">
        <cfargument name="remainingUser" required="true">
        <cfset remainingUser=DateDiff("w",remainingUser,now())>
        <cfreturn #remainingUser#>
    </cffunction>
    <cffunction name="remainingDateMother" access="public" returntype="string" output="true">
        <cfargument name="remainingMother" required="true">
        <cfset remainingMother=DateDiff("w",remainingMother,now())>
        <cfreturn #remainingMother#>
    </cffunction>
</cfcomponent>
