
function validate(){
    var positions=document.getElementById("positions").value.trim();
        if(positions===""){
            document.getElementById("forPosition").innerHTML = "This field is required. Please enter a value.";
        }
        else{
            return true;
        }
        var day=document.getElementById("day").value.trim();
        var month=document.getElementById("month").value.trim();
        var year=document.getElementById("year").value.trim();
        if((day==="")||(month==="")||(year==="")){
            document.getElementById("forDate").innerHTML="This field is required.Please enter a value.";
            
        }
        else{
            return true;
        }
    var profile=document.getElementById("profile").value.trim();
        if(profile==="")
        {
            document.getElementById("forProfile").innerHTML="Please enter a valid url in http://website.com format.";  
        }
        else{
            return true;
        }
    var fName=document.getElementById("fName").value.trim();
    var lName=document.getElementById("lName").value.trim();
        if((fName==="")||(lName==="")){
            document.getElementById("forName").innerHTML="This field is required.Please enter a value.";
            
        }
        else{
            return true;
        }
    var email=document.getElementById("email").value.trim();
        if((email===""))
        {
            document.getElementById("forEmail").innerHTML="This field is required. Please enter a value.";
           
        }
        else{
            return true;
        }
   
    var phone1=document.getElementById("phonePartOne").value.trim();
    var phone2=document.getElementById("phonePartTwo").value.trim();
    var phone3=document.getElementById("phonePartThree").value.trim();
        if((phone1==="")||(phone2==="")||(phone3==="")){
            document.getElementById("forPhone").innerHTML="This field is required. Please enter a value.";
            return false;
        }
        else{
            return true;
        }
}




    