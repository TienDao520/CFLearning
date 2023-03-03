<cfset myVar = false>
<cfset i = 0>
<cfloop condition="myVar eq false">

    <cfset i = i + 1>
    <cfoutput>
        myVar = 
        <b>
            #i# 
            #myVar#
        </b>(still in loop) 
        <br/>
        
    </cfoutput>
    <cfif i eq 10>
        <cfset myVar = "true">
    </cfif>

</cfloop>

<cfoutput>
    myVar = 
    <b>
        #myVar#
    </b>(loop has finished)
</cfoutput>