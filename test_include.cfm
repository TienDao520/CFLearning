<cfinclude template="/greetingCustomizer.cfm">

<cfset fullName = getFullName(firstName="Matt", lastName="Gifford")>

<cfoutput>Hello, #fullName#!</cfoutput>