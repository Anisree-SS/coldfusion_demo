
function validate(){
    var positions=document.getElementById("positions").value.trim();
    var errorPosition=document.getElementById("errorPosition");
    var positionErrorDiv=document.getElementById("positionErrorDiv");
        if(positions===""){
            document.getElementById("forPosition").innerHTML = "This field is required. Please enter a value.";
            errorPosition.classList.add("error");
            positionErrorDiv.classList.add("errorDivClr");
        }
        else{
            document.getElementById("forPosition").innerHTML = "";
            errorPosition.classList.remove("error");
            positionErrorDiv.classList.remove("errorDivClr");
        }
    var day=document.getElementById("day").value.trim();
    var month=document.getElementById("month").value.trim();
    var year=document.getElementById("year").value.trim();
    var errorDate=document.getElementById("errorDate");
    var dateErrorDiv=document.getElementById("dateErrorDiv");
        if((day==="")||(month==="")||(year==="")){
            document.getElementById("forDate").innerHTML="This field is required.Please enter a value.";
            errorDate.classList.add("error");
           dateErrorDiv.classList.add("errorDivClr");
        }
        else if(isNaN(day)||isNaN(month)||isNaN(year)){
            document.getElementById("forDate").innerHTML="Enter a valid date";
            errorDate.classList.add("error");
            dateErrorDiv.classList.add("errorDivClr");
        }
        else{
            document.getElementById("forDate").innerHTML="";
            errorDate.classList.remove("error");
            dateErrorDiv.classList.remove("errorDivClr");
        }
    var profile = document.getElementById("profile").value.trim();
    var pattern = /^(http:\/\/|https:\/\/)?([a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\.)+[a-zA-Z]{2,}\/?$/;
    var errorProfile=document.getElementById("errorProfile");   
    var profileErrorDiv=document.getElementById("profileErrorDiv");
        if (profile === "") {
            document.getElementById("forProfile").innerHTML = "Please enter a valid URL in http://website.com format.";
            errorProfile.classList.add("error");
            profileErrorDiv.classList.add("errorDivClr");
        } 
        else if (!pattern.test(profile)) {
            document.getElementById("forProfile").innerHTML = "Please enter a valid URL in http://website.com format.";
            errorProfile.classList.add("error");
            profileErrorDiv.classList.add("errorDivClr");
        } 
        else {
            document.getElementById("forProfile").innerHTML = "";
            errorProfile.classList.remove("error");
            profileErrorDiv.classList.remove("errorDivClr");
        }
        
    var fName=document.getElementById("fName").value.trim();
    var lName=document.getElementById("lName").value.trim();
    var errorName=document.getElementById("errorName");  
    var nameErrorDiv=document.getElementById("nameErrorDiv");
        if((fName==="")||(lName==="")){
            document.getElementById("forName").innerHTML="This field is required.Please enter a value.";
            errorName.classList.add("error");
            nameErrorDiv.classList.add("errorDivClr");
        }
        else{
            document.getElementById("forName").innerHTML="";
            errorName.classList.remove("error");
            nameErrorDiv.classList.remove("errorDivClr");
        }
    var email=document.getElementById("email").value.trim();
    var errorEmail=document.getElementById("errorEmail"); 
    var emailErrorDiv=document.getElementById("emailErrorDiv");
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if(email==="")
        {
            document.getElementById("forEmail").innerHTML="This field is required. Please enter a value.";
            errorEmail.classList.add("error");
            emailErrorDiv.classList.add("errorDivClr");
        }
        else if(!emailPattern.test(email)){
            document.getElementById("forEmail").innerHTML="Please enter a valid email address.";
            errorEmail.classList.add("error");
            emailErrorDiv.classList.add("errorDivClr");
        }
        else{
            document.getElementById("forEmail").innerHTML="";
            errorEmail.classList.remove("error");
            emailErrorDiv.classList.remove("errorDivClr");
        }
   
    var phone1=document.getElementById("phonePartOne").value.trim();
    var phone2=document.getElementById("phonePartTwo").value.trim();
    var phone3=document.getElementById("phonePartThree").value.trim();
    var errorPhone=document.getElementById("errorPhone");
    var phoneErrorDiv=document.getElementById("phoneErrorDiv");

        if((phone1==="")||(phone2==="")||(phone3==="")){
            document.getElementById("forPhone").innerHTML="This field is required. Please enter a value.";
            errorPhone.classList.add("error");
            phoneErrorDiv.classList.add("errorDivClr");

            return false;

        }
        else{
            document.getElementById("forPhone").innerHTML="";
            errorPhone.classList.remove("error");
            phoneErrorDiv.classList.remove("errorDivClr");
        }
}




    