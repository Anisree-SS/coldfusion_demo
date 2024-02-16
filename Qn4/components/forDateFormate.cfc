<cfcomponent>
    <cffunction name="forClrDate" access="public" returntype="string" output="true">
        <cfset var yr=[]>
        <cfset day=DateFormat(now(),'ddd')>
        <cfswitch expression=#day#>
            <cfcase value="Sun">
                <cfset colorSun="##0000FF">
                <FONT COLOR="#colorSun#">
                    <cfset yr=DateFormat(now(),'dd-mmm-yyyy')>
                    <cfreturn #yr#>
                </FONT>
            </cfcase>
            <cfcase value="Mon">
                <cfset colorMon="##00FF00">
                <FONT COLOR="#colorMon#">
                    <cfset yr=DateFormat(now(),'dd-mmm-yyyy')>
                    <cfreturn #yr#>
                </FONT>
            </cfcase>
            <cfcase value="Tue">
                <cfset colorTue="##FF6600">
                <FONT COLOR="#colorTue#">
                    <cfset yr=DateFormat(now(),'dd-mmm-yyyy')>
                    <cfreturn #yr#>
                </FONT>
            </cfcase>
            <cfcase value="Wed">
                <cfset colorWed="##FFFF00">
                <FONT COLOR="#colorWed#">
                    <cfset yr=DateFormat(now(),'dd-mmm-yyyy')>
                    <cfreturn #yr#>
                </FONT>
            </cfcase>
            <cfcase value="Thu">
                <cfset colorThu="##000000">
                <FONT COLOR="#colorThu#">
                    <cfset yr=DateFormat(now(),'dd-mmm-yyyy')>
                    <cfreturn #yr#>
                </FONT>
            </cfcase>
            <cfcase value="Fri">
                <cfset colorFri="##0000FF">
                <FONT COLOR="#colorFri#">
                    <cfset yr=DateFormat(now(),'dd-mmm-yyyy')>
                    <cfreturn #yr#>
                </FONT>
            </cfcase>
            <cfcase value="Sat">
                <cfset colorSat="##blue">
                <FONT COLOR="#colorSat#">
                    <cfset yr=DateFormat(now(),'dd-mmm-yyyy')>
                    <cfreturn #yr#>
                </FONT>
            </cfcase>
        </cfswitch>
    </cffunction>
</cfcomponent>
