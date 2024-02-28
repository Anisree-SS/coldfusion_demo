<cfcomponent>
    <cffunction name="send" access="public">
        <cfargument name="email">
        <cfargument name="wish">
        <cfargument name="greeting" type="any">

        <cfset local.path = ExpandPath("")>
        <cffile action = "upload" destination =  "#local.path#" nameConflict = "MakeUnique">
        <cfset local.image = cffile.clientFile>

        <cfmail from="anisree.ss@techversantinfotech.com" to="#arguments.email#" subject="Happy Birthday #arguments.wish#"
         mimeattach="#local.path#/#local.image#">#arguments.wish#</cfmail>
         <cfreturn "Email sent successfully">
    </cffunction>
</cfcomponent>
