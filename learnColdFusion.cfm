<cfset varTitle = "This title getting from cfset">

<html>
    <head>
        <tilte>
            <cfoutput>#varTitle#</cfoutput>
        </tilte>
    </head>
    <body>
        <br/>
        <br/>
        <br/>
        <div align="center">
            Welcome 
            <strong>
                <cfoutput>#DateFormat(Now(), "dddd")#</cfoutput>
            </strong>
            <cfoutput>#timeFormat(now(), "H:mm")#</cfoutput>
            <p>
                abc
            </p>
            <cfset varName1 = 1>
            <cfset varName2 = "Variable no 2">
            <cfset varName3 = varName1 + 2>
            <cfset varName4 = varName2 & " & variable ">
        
            <br/>
            <cfoutput>Variable 1: #varName1# Variable 2: #varName2# Variable 3: #varName3# Variable 4: #varName4#</cfoutput>
        </div>
    </body>
</html>