<html>
<head>
<style>
table,td,th{
	border:3px solid black;
	border-collapse:collapse;
}
</style>
</head>
<body bgcolor="#FFBBBB">
<% 
	if request.Form("select")<>"" then
		Response.Redirect(Request.Form("select"))
	end if
%>
<Form action="goa.asp" method="post">
<marquee align="top" behavior="slide" direction="right"><h1>HOTELS OF GOA</h1></marquee>
<table align="center" height="500px" width="500px">
	<tr>
	<th><h2>Name of book</h2></th><th><h2>Price</h2></th>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="Hotel.asp">GATE Preparation</td><td><h4>3000rs</h4></td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="Hotel.asp">Object Oriented Programing</td><td><h4>4500rs</h4></td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="Hotel.asp">Fundamentals Of Data Structures</td><td><h4>3000rs</h4></td>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="Hotel.asp">Electronic Measurement and Instrumentation</td><td><h4>3500rs</h4></td>
	</tr>
	<tr>
	<td colspan="6"><input type="submit" value="DONE"></td>
</tr>

</table>
</Form>
</body>
</html>	