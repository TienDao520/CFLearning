
<cfif getBaseTemplatePath() eq getCurrentTemplatePath()>
    <p>Nope, sorry, you don't have access to that page</p>

    <cfabort >
</cfif>
<h1><cfoutput >#title#</cfoutput></h1>

<cfoutput >getBaseTemplatePath: #getBaseTemplatePath()#</cfoutput><br/>
<cfoutput >getCurrentTemplatePath: #getCurrentTemplatePath()#</cfoutput>