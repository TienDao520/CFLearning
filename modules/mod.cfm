<cfif ThisTag.executionMode eq "start">
    <cfparam name="attributes.title" default="">
    <html>
        <head>
            <title>
                <cfoutput>#attributes.title#</cfoutput>
            </title>
        </head>
        <body>
            <div id="nav">
                <a href="index.cfm">
                    Welcome
                </a>
                <a href="about.cfm">
                    About
                </a>
            </div>
            <h1>
                <cfoutput>#attributes.title#</cfoutput>
            </h1>
        </body>
    </html>
    <hr/>
    <address>
        Copyright &copy; 
        <cfoutput>#DateFormat(Now(), "dddd mm/dd/yyyy")# #timeFormat(now(), "hh:mm:ss tt")#</cfoutput>
    </address>
</cfif>
<cfif ThisTag.executionMode eq "end">
</cfif>