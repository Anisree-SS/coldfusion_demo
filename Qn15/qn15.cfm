<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <h6>Create a component with function multiply. Create a cfm page which need to call that function with different 
    arguments (mentioned below) using cfinvoke tag, cfobject tag and createobject function. It should give results for the following function calls with different number of arguments
    </h6>
    <div>
        <!-- Using cfinvoke -->
        <b>Using cfinvoke:</b>
        <cfinvoke component="components/qn15" method="multiply" num1="1" num2="2" returnvariable="result">
            <cfinvokeargument name="num3" value="1">
        </cfinvoke>
        <cfdump var="#result#" >
      
        <cfinvoke component="components/qn15" method="multiply" num1="1" num2="2" num3="3" returnvariable="result">
            <cfinvokeargument name="num4" value="1">
        </cfinvoke>
        <cfdump var="#result#" >
      
        <cfinvoke component="components/qn15" method="multiply" num1="1" num2="2" num3="3" num4="4" returnvariable="result">
        </cfinvoke>  
        <CFOUTPUT>
            <p>#result#</p>
        </cfoutput>
    </div>
    <div>
        <!-- Using cfobject -->
        <b>Using cfobject:</b>
        <cfobject component="components/qn15" name="multiplyObj">
        <cfset result1 = multiplyObj.multiply(1, 2)>
        <cfset result2 = multiplyObj.multiply(1, 2, 3)>
        <cfset result3 = multiplyObj.multiply(1, 2, 3, 4)>
        <CFOUTPUT>
            <p>#result1#</p>
            <p>#result2#</p>
            <p>#result3#</p>
        </cfoutput>
    </div>
    <div>
         <!-- Using createObject() -->
        <b>Using createObject():</b>
        <cfset obj = createObject("component", "components/qn15")>
        <cfset result4 = obj.multiply(1, 2)>
        <cfset result5 = obj.multiply(1, 2, 3)>
        <cfset result6 = obj.multiply(1, 2, 3, 4)>
        <cfoutput>
            <p>#result4#</p>
            <p>#result5#</p>
            <p>#result6#</p>
        </cfoutput>
    </div>
</body>
</html>
