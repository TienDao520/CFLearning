<cfscript>
    objGreeting = createObject('component', 'components.GreetingComponent');

    myGreeting = invoke(objGreeting, 'getGreeting', {firstName='Matt', lastName='Gifford'});

    writeOutput(myGreeting);
</cfscript>
