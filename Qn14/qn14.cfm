
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Upload Form</title>
</head>
<body>
    <h6>Create a form with Image name text box , description text area & Image upload field. User can upload only small
        size jpg,png and gif files. Add validation to check uploaded file type & file size. User should not upload a image which is greater than 1 MB. Once user uploaded a image,create a thumbnail image (20*20 size) from uploaded images. In list page, show thumbnail image & image name. While clicking on the image name, it should redirect the user to details page which will show image name, description & original uploaded image.
    </h6>
    <form action="qn14.cfm" method="post" enctype="multipart/form-data">
        <label for="imgName">Image Name:</label><br>
        <input type="text" id="imgName" name="imgName" required><br><br>
        
        <label for="description">Description:</label><br>
        <textarea id="description" name="description" required></textarea><br><br>
        
        <label for="image">Upload Image (max 1MB, JPG/PNG/GIF only):</label><br>
        <input type="file" id="image" name="image" accept="image/jpeg, image/png, image/gif" required><br><br>
        
        <input type="submit" value="Upload Image" name="submit">
    </form>
    <cfif StructKeyExists(form, "submit")>
        <cfset demoObj=createObject("component","components/forQn14")>
        <cfset x=demoObj.uploadImg(form.imgName,form.description,form.image)>
        <cfoutput>
            <p>#demoObj.uploadImg("form.imgName","form.description","form.image")#</p>
        </cfoutput>
    </cfif>
    
</body>
</html>
