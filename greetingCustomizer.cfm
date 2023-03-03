<cfscript>
public string function getFullName(
    string firstName = '',
    string lastName  = ''
){
    var fullName = arguments.firstName & ' ' & arguments.lastName;
    return fullName;
}
</cfscript>