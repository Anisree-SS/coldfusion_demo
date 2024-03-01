<cfcomponent>
    <cffunction name="uploadImg" access="public" returnType="any" output="true">
        <cfargument name="imgName" required="true">
        <cfargument name="discription" required="true">
        <cfargument name="image" required="true">
        <cfset allowed_types = ['image/jpeg', 'image/png', 'image/gif']>
         <!--- 1MB --->


        <cfif structKeyExists(form, "image") AND len(form.image)>
            <!--- Obtain the size of the uploaded image --->
            <cfset local.path = expandPath("../Qn14/assets/")&"#imgName#">
            <cffile action="write" file="#local.path#" output="#form.image#" />
            <cfset fileInfo = GetFileInfo(local.path)>
            <cfset imageSize = fileInfo.size>
            <cfset maxSize = 1024*2>
            <cfif imageSize GT maxSize>
                <cfreturn "unsuccess">
            <cfelse>
                <cfreturn "success">
            </cfif>
        </cfif>
            
        
       <!---cfif NOT len(arguments.image)>
            <cfreturn "unsuccess: No image uploaded.">
        </cfif>

        
        <cfset max_size = 1 * 1024 * 1024---> <!--- 1MB --->
        <!---cfif arguments.image.size GT max_size>
            <cfreturn "unsuccess: Image size exceeds 1MB limit.">
        </cfif--->
        
        <!--- If image exists and within size limit, return success --->
        
    </cffunction> 
</cfcomponent>