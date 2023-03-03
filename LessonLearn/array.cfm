<cfset myArray = ArrayNew()>
<cfset myArray[1] = "One">
<cfset myArray[2] = "Two">
<cfset myArray[3] = "Three">

<cfloop array="#myArray#" index="i" >
    <cfoutput >#i#</cfoutput><br />
</cfloop>

<cfset myArray2 = ArrayNew(1)>
<cfset arrayAppend(myArray2,"Hello")>
<cfset arrayAppend(myArray2,"Greetings")>
<cfloop array="#myArray2#" index="x" >
    <cfoutput >#x#</cfoutput> <br />
</cfloop>

<p>
    ArrayLen check: <cfoutput >#arrayLen(myArray2)#</cfoutput> <br />
</p>

<cfset myArray3 = ArrayNew(2)>
<cfset myArray3[1][1] = "1">
<cfset myArray3[1][2] = "One">
<cfset myArray3[2][1] = "2">
<cfset myArray3[2][2] = "Two">

<cfloop from="1" to="#arrayLen(myArray3)#" index="i">
    <cfoutput >#myArray3[i][1]# - #myArray3[i][2]#</cfoutput><br />
</cfloop>

<cfset myArrayToList = arrayNew(1)>
<cfset myArrayToList[1] = "One">
<cfset myArrayToList[2] = "Two">
<cfset myArrayToList[3] = "Three">

<cfset myList = arrayToList(myArrayToList)>
<cfoutput >
    #myList#
</cfoutput>