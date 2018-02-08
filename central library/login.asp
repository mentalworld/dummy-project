<html>
<body>
<%
	dim username,password
	username=Request.Form("u")
	password=Request.Form("p")

	if username<>"" then
	
		set conn=Server.CreateObject("ADODB.Connection")
		conn.Provider="Microsoft.Jet.OLEDB.4.0"
		conn.Open="d:/my website/webd/tourism.mdb"
		set rs=Server.CreateObject("ADODB.recordset")
		on error resume next
		rs.Open "Select username,password from login",conn

		if err<>0 then
			Response.Write("Error occured!" & err.description)
		else
			do until rs.EOF
				if rs(0)=username and rs(1)=password then
					Response.Redirect("home.htm")
				end if
				rs.MoveNext
			loop
			Response.Redirect("error.htm")
		end if
		
		conn.close
	end if

%>
<table align="center" height=400px width=400px border="1" bordercolor="blue">
<form action=login.asp name=regis method=post>
	<tr>
	<td>Username:</td><td><input type=text name=u placeholder="Enter user name"></td>
	</tr>
	<tr>
	<td>Password:</td><td><input type=password name=p placeholder="Enter password"></td>
	</tr>
	<tr>
	<td><input type=submit value=signin onclick=check()></td>
	<td><a href=registration.asp>new user</a></td>
	</tr>
</form>
</table>
<script language=javascript>
	function check()
	{
		if(document.regis.u.value=="")
		{
		alert("Enter username");
		return;
		}
	
		if(document.regis.p.value=="")
		{
		alert("Enter password");
		return;
		}
	}
</script>
</body>
</html>

	
