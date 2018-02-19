<%@ include file="header.jsp" %>
<div id="loginContent">
<% 
int temp = (Integer.parseInt(request.getParameter("ID")));
out.append("<form action=\"carUpdateProcess.jsp?ID="+temp+"\" method=\"post\">");
%>

<table>
<%
	Car c = dao.getCarById(Integer.parseInt(request.getParameter("ID")));
	out.append("<tr><td>"+"Model"+"</td><td><input type=\"text\" name=\"model\" value="+c.getModel()+"></td></tr>");
	out.append("<tr><td>"+"Name"+"</td><td><input type=\"text\" name=\"name\" value="+c.getName()+"></td></tr>");
	out.append("<tr><td>"+"Year"+"</td><td><input type=\"text\" name=\"year\" value="+c.getYear()+"></td></tr>");
	out.append("<tr><td>"+"Price"+"</td><td><input type=\"text\" name=\"price\" value="+c.getPrice()+"></td></tr>");
	out.append("<tr><td>"+"Photo"+"</td><td><input type=\"text\" name=\"link\" value="+c.getLink()+"></td></tr>");
	out.append("<tr><td>"+"Description"+"</td><td><textarea rows=\"4\" cols=\"35\" name=\"description\">"+c.getDescription()+"</textarea></td></tr>");
%>
</table>
<center><input type="submit" value="Update a Car"/></center>
</form>  
</body>
</html>