<html class="">
    <body class="">
        <cfif isDefined("url.error")>
            <font color="#FF0000#">
                <cfoutput>#htmlEditFormat(url.error)#</cfoutput>
            </font>
        </cfif>
    
        <form action="auth.cfm", method="post">
            <div class="container">
                <label for="username" class=""><b>Username</b></label>
                <input type="text" class="" placeholder="Enter Username" name="username" required>

                <label for="password" class=""><b>Password</b></label>
                <input type="password" class="" placeholder="Enter Password" name="password" required>

                <button class="" type="submit">Login</button>

            </div>
        </form>
        <a href="../index.cfm" class="">
            Back to Home
        </a>
        <br/>
    </body>
</html>