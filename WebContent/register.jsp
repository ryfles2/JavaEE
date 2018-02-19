<%@ include file="header.jsp" %>
<div id="loginContent">
<form action="registerProcess.jsp" method="post">
<table>
<tr>
<td>Email:</td><td><input type="text" name="mailR"/></td>
</tr>
<tr>
<td>Password‚o:</td><td><input type="password" name="passwordR"/></td>
</tr>
<tr>
<td>Repeat password:</td><td><input type="password" name="password2R"/></td>
</tr>
<tr>
<td>Name:</td><td><input type="text" name="nameR"/></td>
</tr>
<tr>
<td>Phone:</td><td><input type="text" name="phoneR"/></td>
</tr>
</table>
<center><input type="submit" value="Register"/></center>
</form>  
<%

		int errorType = Integer.parseInt(request.getParameter("eType"));
		switch (errorType)
		{
		case 1:
			out.append("<font color=\"red\">Two different passwords.</font> </br>");
			break;
		case 2:
			out.append("<font color=\"red\">The user with the given e-mail already exists.</font> </br>");
			break;
		}
	
%>
<a href="login.jsp">Do you already have an account? Sign In</a>
</div>
</body>
</html>