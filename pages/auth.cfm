<cfset varUsername = "TienDao">
<cfset varPassword = "123">

<cfif form.username IS varUsername>
    <cfif form.password IS varPassword>
        <cflocation url="loggedin.cfm">
    <cfelse>
        <cfset errormsg = "The password/user is incorrect">
        <cflocation url="login.cfm?error=#errormsg#" addtoken="false">
    </cfif>
<cfelse>
    <cfset errormsg = "The password/user is incorrect">
    <cflocation url="login.cfm?error=#errormsg#" addtoken="false">
</cfif>