
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Upload Form</title>
    <script src="script/scriptForQn14.js"></script>
     <link rel="stylesheet" href="./style/styleFor14.css">
</head>
<body>
    <h6>Create a form with Image name text box , description text area & Image upload field. User can upload only small
        size jpg,png and gif files. Add validation to check uploaded file type & file size. User should not upload a image which is greater than 1 MB. Once user uploaded a image,create a thumbnail image (20*20 size) from uploaded images. In list page, show thumbnail image & image name. While clicking on the image name, it should redirect the user to details page which will show image name, description & original uploaded image.
    </h6>
    <div>
        <form action="qn14.cfm" method="post" onsubmit="return validate()"  enctype="multipart/form-data">
            <label for="imageName">Image Name:</label>
            <input type="text" id="imageName" name="imageName"><br>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="2" cols="20"></textarea><br>

            <label for="imageFile">Image Upload</label>
            <input type="file" id="imageFile" name="imageFile" accept=".jpg, .jpeg, .png, .gif" onchange="check()">
            <br>
        
            <input type="submit" value="Upload Image">
            <p id="filerror" class="error" ></p>
        </form>

        <cfif structKeyExists(form, "imageName") and structKeyExists(form, "description") and structKeyExists(form, "imageFile")>
            <cfset local.path = ExpandPath("../Qn14/assets/")>

            <cfif structKeyExists(form, "imageFile")>
            <cffile action = "upload" 
            fileField = "form.imageFile" 
            destination =  "#local.path#"
            nameConflict = "MakeUnique"
            allowedextensions=".jpg, .jpeg, .png, .gif">

            <cfset local.image = cffile.clientFile>

            <cfset local.insertq = createObject("component","components/forQn14").init(imgname="#form.imageName#",discription="#form.description#",imageN="#local.image#")>
            </cfif>
            <cflocation url="qn14PageTwo.cfm" addtoken="no">
        </cfif>
    </div>
</body>
</html>
