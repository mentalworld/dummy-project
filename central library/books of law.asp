<html>
<head>
<style>
table,td,th{
	border:3px solid black;
	border-collapse:collapse;
}
</style>
</head>
<body bgcolor="#FFBBB">
<% 
	if request.Form("select")<>"" then
		Response.Redirect(Request.Form("select"))
	end if
%>
<Form action="books.asp" method="post">
<marquee align="top" behavior="slide" direction="DOWN"><h1>BOOKS OF LAW</h1></marquee>
<table align="center" height="500px" width="500px">
	<tr>
	<th><h2>Name of book</h2></th><th><h2>Price</h2></th>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="LAW362.asp">SUPREME COURT LAW</td><td><h4>5000rs</h4></td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="LAW456.asp">HIGH COURT LAW</td><td><h4>4500rs</h4></td>
	</tr>
	<tr>
	
	<td colspan="2"><input type="submit" value="DONE"></td>
</tr>

</table>
</Form>
</body>
</html>	