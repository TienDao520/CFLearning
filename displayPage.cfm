<cfset firstName = "Matt">
<cfset lastName = "Gifford">

<cfinclude template="./greetingCustomizer_2.cfm">

<cfset fullName = getFullName()>

<cfoutput>Hello, #fullName#!</cfoutput>