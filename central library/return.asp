<html>
<head>
<style>
<body background="078.jpg">
table,td,th{
	border:3px solid black;
	border-collapse:collapse;
}
</style>
</head>
<body bgcolor="#FFAAAA">
<% 
	if request.Form("select")<>"" then
		Response.Redirect(Request.Form("select"))
	end if
%>
<Form action="bus1.asp" method="post">
<table align="center">
	<tr>
	<th>Name of book</th><th>Edition</th><th>Book ID</th><th>Author</th>	</tr>
	<tr>
	<td><input type="radio" name="select" value="DAA.asp">DATA ANALYSIS N ALGORITHM</td><td><h4>2ND</td><td><h4>BVDAA2345</td><td><h4>SARTAJ SAHANI</td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="DS.asp">DATA STRUCTURE</td><td><h4>3RD</td><td><h4>BVDS2436</td><td><h4>RAJARAM.R</td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="MECHANICS.asp">ENGINEERING MECHANICS</td><td><h4>1ST</td><td><h4>BVMC3674</td><td><h4>R.S.DUBEY</td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="DESIGNING.asp">DESIGNING</td><td><h4>7TH</td><td><h4>BVDG3845</td><td><h4>RAGHU NATH</td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="LAW.asp">SUPREME COURT LAW</td><td><h4>2ND</td><td><h4>BVLLB2587</td><td><h4>TYLER MOYRE</td>
	</tr>
		<td colspan="3"><input type="submit" value="DONE"></td>
	<td colspan="3"><a href=home.htm>Back</a></td>

</tr>

</table>
</Form>
</body>
</html>	