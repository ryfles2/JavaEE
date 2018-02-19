<%@ include file="header.jsp" %>
<div id="loginContent">
<form action="loginProcess.jsp" method="post">
<table>
<tr>
<td>Email:<input type="text" name="mail"/></td>
</tr>
<tr>
<td>Password:<input type="password" name="password"/></td>
</tr>
</table>
<center><input type="submit" value="Log in"/></center>
</form>  
<%
		Boolean error = Boolean.parseBoolean(request.getParameter("error"));
		if(error)out.append("<font color=\"red\">The user does not exist or incorrect password.</font> </br>");
	
%>
<a href="register.jsp">Register if you do not have an account</a>
</div>
</body>
</html>