<cfcomponent>
   <cffunction name = "send" access="public">
        <cfargument name="email" type="any" required="true">
        <cfargument name="wish" type="any" required="true">
        <cfargument name="greeting" type="any" required="true">
        <cfmail
            from="anisree.ss@techversentinfotech.com"
            to="#URL.email#"
            subject="Sample e-mail from ColdFusion">
   </cffunction>
</cfcomponent>
