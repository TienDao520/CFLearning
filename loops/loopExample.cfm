<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Document
        </title>
    </head>
    <body>
        <h1>
            Welcome
        </h1>
        <p>
            List loop using delimiters
            <cfset myFirstList = "listItem 1,listItem 2,listItem 3,listItem 4,listItem 5">
            <cfloop list="#myFirstList#" item="testItem" delimiters=",">
                <cfoutput>#testItem#</cfoutput>
            </cfloop>
            <br/>
            <cfset numList = "1 2 3 4 5 6 7 8 9 10">
            <cfloop list="#numList#" index="i" item="item" delimiters=" "><cfoutput>#i# - #item#,</cfoutput></cfloop>
            <br/>
            <cfset numList2 = "1 2 3 4 10 15 16 17 18 19 110">
            <cfloop list="#numList2#" index="i" item="item" delimiters=" "><cfoutput> #item# (#i#) <cfif i NEQ #listLen(numList, " ")#>,</cfif></cfoutput></cfloop>
            <br/>
            <cfloop from="1" to="7" index="i" step="2">
                <cfoutput>#i#</cfoutput>
            </cfloop>
            <cfset i=1>
            <cfloop condition = "i LT 10">
                <cfoutput >
                    i = <b>#i#</b> (still in loop) <br/>
                </cfoutput>
                <cfset i=i+1>
            </cfloop>
            <cfoutput>i = <b>#i#</b></cfoutput> (loop has finished) <br/>

        </p>

    </body>
</html>