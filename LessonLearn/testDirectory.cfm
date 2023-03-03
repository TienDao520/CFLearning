<cfdirectory 
     directory="#ExpandPath('testDirectory')#"
     name="TienDao"
     action="list"
>

<cfdump var="#TienDao#" >
<cfdump var="#ListFirst(FileGetMimeType("testDirectory/cat1.jpg"), "/")#">


 <!---
<cfloop query="#TienDao#">
    <!---<cfdump var="#TienDao.name#">--->

    <cfif ListFirst(FileGetMimeType("testDirectory/#TienDao.name#"), "/") eq "image">
        <img src="testDirectory/<cfoutput>#TienDao.name#</cfoutput>"><br>
    <cfelse>
        <p>The file is not an image.</p>
    </cfif>
</cfloop>
--->

<table>
    <tr>
        <th>Name</th>
        <th>View</th>
        <th>Size</th>

    </tr>
    <cfloop query = "#TienDao#">
        <tr>
            <td><cfoutput>#TienDao.name#</cfoutput></td>
            <td><img src="testDirectory/<cfoutput>#TienDao.name#</cfoutput>"></td>
            <td><cfoutput>#TienDao.size#</cfoutput></td>

        </tr>
    </cfloop>
</table>

