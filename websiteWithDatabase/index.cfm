<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="content-wrapper">
        <cfquery datasource="CRMS" name="qryCustomers">
            SELECT * FROM customers;
        </cfquery>
        <cfoutput query="qryCustomers">
            COLUMNS: #qryCustomers.ColumnList#<br />
            Record Count: #qryCustomers.RecordCount#<br />
            Current Row: #qryCustomers.CurrentRow#<br />
        </cfoutput>
        <h2>Customers</h2>
        <cfoutput query="qryCustomers">
            <p>Businessname: #qryCustomers.businessname#</p>
            <p>Website: #qryCustomers.website#</p>
            <p>email: #qryCustomers.emailaddress#</p>
            <p>phonenumber: #qryCustomers.phonenr#</p>
            <table border="1">
                <tr>
                    <td colspan="3"><h3>#qryCustomers.businessname#</h3></td>
                </tr>
                <tr>
                    <td><strong>Contactperson:</strong>#qryCustomers.contactpersonname# </td>
                    <td>#qryCustomers.phonenr#</td>
                    <td>#qryCustomers.emailaddress#</td>
                </tr>
            </table>
        </cfoutput>


    </div>
</body>
</html>