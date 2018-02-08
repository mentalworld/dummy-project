<html>
<head>
<body bgcolor="#FCCGH">
<body background=".jpg">
 
   <title>My Web Project</title>
           <link rel="stylesheet"type="text/css"href="styles.css">
     script type="tex/javascript"scr='script.js'></script>
</head>

<body>

<table width="100%"height="15%">
<tr>
<td><h2>**ID CARD**</h2></td>
<td width="200px"></td>
<td>

<form method ="post"action="http://localhost:6060/MyWebProject/login">

Username:<input type="text"name="username"class="textbox">
Password:<input type="password"name="password"class="textbox">
<input type="submit"value="Login"class="circle"onclick="return checklogin(this.form);">
</form>
</td>
</tr>
</table> 
<center><h3 id="error"></h3></center>


<%
  if(request.getparameter("result")!=null){%>
<center>
<div style="height:25px;width:280px; background.colour:red">
<b>Wrong user name or password</b>
</div>
</center>
<%}%>

<hr>
<%
  if(request.getparameter("username")!=null){%>
<center>
<div style="height:40px;width:400px;background.colour:red">

<b>same user name already exist in our database..!!<br>please try another.</b>
</div>
</center>
<%}%>


<table width="100%">
<tr>

<td width="800px"align="center"><h1>**Welcome**</h1></td>

<td>

<form method ="post"action="http://localhost:6060/MyWebProject/registration">

<h1>Create account</h1>
<table>
<tr>
<td>First Name</td>
<td><input type"text"name="firstname"class="textbox"></td>
</tr>
<tr height="20px">
<td></td>
<td id="firstname"></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text"name="lastname"class="textbox"></td>
</tr>
<tr height="20px">
<td></td>
</tr>

<tr>
<td>user name</td>
<td><input type="text"autocomplete="off"name="username" id="checkusername"class="textbox"
onkeyup="return checkUsername0;"></td>
</tr>

<tr height="20px">
<td></td>
<td id="username">/</td>
</tr>

<tr>
<td>Date Of Birth:</td>

<td><select name="bday"class="dob">
<option>Day</option>
<%for(int i=1;i<=31;i++){%>
<opyion>
<%=i%>
</option>
<%}%>
</selecet>

<select name="bmonth"class="dob">
<option>month</option>
<option>Jan</option>
<option>Feb</option>
<option>Mar</option>
<option>Apr</option>
<option>May</option>
<option>Jun</option>
<option>Jul</option>
<option>Aug</option>
<option>Sep</option>
<option>Oct</option>
<option>Nov</option>
<option>Dec</option>

</select>

<select name="byear"class="dob">
<option>year</option>
<%for(int i=2016;i>=1920;i--){%>
<option>
<%=i%>
</option>
<%}%>
</select>
</td>
</tr>


<tr height="20px">
<td></td>
<td id="dob"></td>
</tr>

<tr>
<td>Gender:</td>
<td>
Female<input type="radio" name="gender" value="female">
male<input type="radio" name="gender" value="male">
other<input type="radio" nmae="gender" value="other">
</td>
</tr>


<tr height="20px">
<td></td>
<td id="gender"></td>
</tr>

<tr>
<td>password:</td>
<td><input type="password"name="password"class="textbox"></td>
</tr>

<tr height="20px">
<td></td>
<td id="password"></td>
</tr>

<tr>
<td>Re-enter password:</td>
<td><input type="password" name="cpassword" class="textbox"></tr>
</tr>

<tr height="20px">
<td></td>
<td id="cpassword"></td>
</tr>

<tr>
<td></td>
<td>
<input type="checkbox"name="terms"><a href="terms&condition.jsp"target="_blank">I agree terms & codition</a>
</td>
</tr>


<tr>
<td><input type="submit"value="Create"class="circle"onclick="return checkregistration(this.form);"></td>
<td><input type="reset"value="clear"class="circle"></td>
</tr>

</table>

</form>
</td>
</tr>
</table>


<hr>
<br><br>
<hr>

</body>
</html>
