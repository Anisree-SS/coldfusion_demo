function check()
{
    var number;
    number=document.getElementById("number").value.trim();
    if((number=="")|| isNaN(number)){
        alert("Enter a number");
    }
}