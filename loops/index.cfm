<cfmodule template="./mod.cfm" title="Loops">

    <cfloop from="1" to="10" index="x">
        <cfoutput>#x#</cfoutput>
        <br/>
    </cfloop>

    Loops for List:
    <cfset fruits = "Apple, Pear, Orange">

    <br/>
    <cfloop list="#fruits#" index="x">
        <cfoutput>#x#</cfoutput>
        <br/>
    </cfloop>

    Loops for Array:
    <cfset veggies = ["Carrots", "Green Beans", "Beets"]>

    <br/>
    <cfloop array="#veggies#" index="x">
        <cfoutput>#x#</cfoutput>
        <br/>
    </cfloop>

    Loops data from file:
    <br/>
    <cfloop file="#ExpandPath('./dataFile.txt')#" index="x">
        <cfoutput>#x#</cfoutput>
        <br/>
    </cfloop>

    Loops for 2D Array:
    <br/>
    <cfset myArr = ArrayNew(2)>
    <cfset myArr[1][1] = "Hello">
    <cfset myArr[1][2] = "Hi">
    <cfset myArr[2][1] = "Bye">
    <cfset myArr[2][2] = "Good bye">

    <cfloop from="1" to="#ArrayLen(myArr)#" index="x">
        <cfoutput>
            #myArr[x][1]# - #myArr[x][2]#
            <br/>
        </cfoutput>
    </cfloop>
</cfmodule>