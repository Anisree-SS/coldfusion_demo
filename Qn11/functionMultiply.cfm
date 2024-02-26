<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <title>document</title>
</head>
<body>
    <h6>
        Create a cfm page with a function named multiply. It should give results for the following function calls. 
    </h6>

    <cfscript>
        function multiply() {
            var result = 1;
            for (var i = 1; i <= arrayLen(arguments); i++) {
                result *= arguments[i];
            }
            return result;
        }

        res = multiply(1, 2);
        writeDump(var=res);


        res = multiply(1, 2, 3);
        writeDump(var=res);


        res = multiply(1, 2, 3, 4);
        writeDump(var=res);
        
    </cfscript>
</body>
</html>
