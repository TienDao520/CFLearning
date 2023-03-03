<cfset request.dsn = "test">
<cfset request.un = "root">
<cfset request.pw = "T7n@1995">

<cfset name="">
<cfset phone="">

<!--- 
<cfquery datasource="#request.dsn#" username="#request.un#" password="#request.pw#" >
    delete from people;
</cfquery>

<cfquery datasource="#request.dsn#" username="#request.un#" password="#request.pw#" >
    insert into people (name, phone)
    values ('TienDao', '5483885898');
</cfquery>

<cfquery  name="q" datasource="#request.dsn#" username="#request.un#" password="#request.pw#" >
    select * from people
</cfquery>

<cfdump var="#q#">
--->


<cfif IsDefined("url.id") and IsNumeric(url.id)>
    <cfquery name="u" datasource="#request.dsn#" username="#request.un#" password="#request.pw#">
        select *
        from people
        where id = <cfqueryparam cfsqltype="cf_sql_bigint" value="#url.id#">;
    </cfquery>
    <cfset name = u.name>
    <cfset phone = u.phone>
<cfelseif isDefined("url.did") and isNumeric(url.did)>
    <cfquery name="d" datasource="#request.dsn#" username="#request.un#" password="#request.pw#">
        delete from people where id = <cfqueryparam cfsqltype="cf_sql_bigint" value="#url.did#">;
    </cfquery>

</cfif>

<form name="form1" method="post" action="<cfoutput>#cgi.script_name#</cfoutput>">
    <table>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" value="<cfoutput>#name#</cfoutput>"></td>
        </tr>
        <tr>
            <th>Phone</th>
            <td><input type="text" name="phone" value="<cfoutput>#phone#</cfoutput>"></td>
        </tr>
    </table>
    <input type="submit" value="Submit" name="submit">
    <!---check if a URL parameter named "id" exists 
        and if it contains a numeric value. If both conditions are true, 
        it adds a hidden input field to the form with the name "id" and the value of the "id" URL parameter.--->
    <cfif IsDefined("url.id") and IsNumeric(url.id)>
        <input type="hidden" name="id" value="<cfoutput>#url.id#</cfoutput>">
    </cfif>
</form>

<!--- Update data into a Database--->
<cfif IsDefined("form.id")>
    <cfquery datasource="#request.dsn#" username="#request.un#" password="#request.pw#">
        update people
        set name = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.name#">,
            phone = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.phone#">
        where id = <cfqueryparam cfsqltype="cf_sql_bigint" value="#form.id#">;
    </cfquery>

<!--- Insert data into a Database--->
<cfelseif IsDefined("form.name") and IsDefined("form.phone") and Len(form.name)>
    <cfquery  datasource="#request.dsn#" username="#request.un#" password="#request.pw#">
        insert into people (name, phone)
        values (
            <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.name#">,
            <cfqueryparam  cfsqltype="cf_sql_varchar" value="#form.phone#">
        )
    </cfquery>
</cfif>




<cfquery  name="q" datasource="#request.dsn#" username="#request.un#" password="#request.pw#">
    select name,id,phone from people
</cfquery>

<!--- Added edit to modify records--->
<cftable query="q" colheaders="true">
    <cfcol header="name" text="#name#">
    <cfcol header="phone" text="#phone#">
    <cfcol header="actions" text="<a href='#cgi.script_name#?id=#q.id#'>edit</a> ">
    <cfcol header="" text="<a href='#cgi.script_name#?did=#id#'>del</a> ">
</cftable>


<!---
In ColdFusion, cgi (Common Gateway Interface) is a special variable scope that contains information about the client's request and the server's environment. The cgi scope provides access to a variety of variables that are automatically set by the web server, such as cgi.server_name, cgi.remote_addr, cgi.user_agent, and cgi.query_string.

Here are some common variables available in the cgi scope:

cgi.auth_password: The password entered by the user if authentication is required to access the current page.
cgi.auth_type: The type of authentication used to access the current page, if any.
cgi.content_length: The length of the request body, if any.
cgi.content_type: The MIME type of the request body, if any.
cgi.http_cookie: The value of any cookies sent by the client in the current request.
cgi.http_referer: The URL of the page that linked to the current page.
cgi.query_string: The query string portion of the URL used to access the current page.
cgi.remote_addr: The IP address of the client making the request.
cgi.remote_host: The hostname of the client making the request, if available.
cgi.request_method: The HTTP method used to make the current request (e.g. GET, POST, etc.).
cgi.script_name: The name of the current script, including its path, as requested by the client.
cgi.server_name: The name of the web server handling the current request.
cgi.server_port: The port number on which the web server is listening for requests.
The cgi scope is useful for accessing information about the client's request and the server's environment, and can be used for a variety of purposes such as logging, debugging, and security.  

--->