<html>
<head>
<style>
table,td,th{
	border:1px solid black;
	border-collapse:collapse;
}
</style>
</head>
<body bgcolor="#FFAABB">
<%
	if request.Form("select")<>"" then
		Response.Redirect(Request.Form("select"))
	end if
%>
<Form action="flight.asp" method="post">
<table align="center" height="500px" width="500px">
	<tr>
	<th>SUBJECT</th><th>Course</th>
	</tr>
	<tr>
	<td><input type="radio" name="select" value="DAA.asp">DATA ANALYSIS N ALGORITHM</td><td><h4>B.TECH CS
	</tr>
	<tr>
        <td><input type="radio" name="select" value="DS.asp"> DATA STRUCTURE</td><td><h4>B.TECH CS
	</tr>
	<tr>
	<td><input type="radio" name="select" value="MECHANICS.asp">MECHANICS</td><td><h4>B.TECH CS
	</tr>
	<tr>
	<td><input type="radio" name="select" value="DESIGNING.asp">B DESIGNING</td><td><h4>B.DES
	</tr>
	<tr>
	<td><input type="radio" name="select" value="LAW.asp">LAW</td><td><h4>BALLB
	</tr>
	
	<tr>
	<td colspan="3"><input type="submit" value="DONE" align="center"></td>
	<td colspan="3"><a href=home.htm>Back</a></td>
</tr>

</table>
</Form>
</body>
</html>	