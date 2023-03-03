<cfset fruitBasket = {"Apple"="Like", "Banana"="Like", "Cherry"="Dislike"}>
<cfdump var="#FruitBasket#">
<cfloop collection="#FruitBasket#" item="fruit">
    <cfoutput>I #FruitBasket[fruit]# #fruit#</cfoutput>
    <br>
</cfloop>