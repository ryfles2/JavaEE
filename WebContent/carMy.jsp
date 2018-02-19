<%@ include file="header.jsp" %>
<body>
<div id="content2">
<table>
<tr>
<td>Model</td>
<td>Name</td>
<td>Year</td>
<td>Price</td>
<td>Seller</td>
<td>Phone</td>
<td>Description</td>
<td>Action</td>

</tr>
<%
	Car c = dao.getCarById(Integer.parseInt(request.getParameter("ID")));
	User u = dao.getUserById(c.getIDusers());
	out.append("<tr>");
	out.append("<td>"+c.getModel()+"</td>");
	out.append("<td>"+c.getName()+"</td>");
	out.append("<td>"+c.getYear()+"</td>");
	out.append("<td>"+c.getPrice()+"</td>");
	out.append("<td>"+u.getName()+"</td>");
	out.append("<td>"+u.getPhone()+"</td>");
	out.append("<td>"+c.getDescription()+"</td>");
	out.append("<td><h7><a href=carDelete.jsp?ID="+c.getID()+">"+"Delete"+"</a></h7></td>");
	out.append("<td><h7><a href=carUpdate.jsp?ID="+c.getID()+">"+"Update"+"</a></h7></td>");
	out.append("<tr>");
	
	
%>
</table>
<%
	out.append("<td>"+"<image src="+c.getLink()+">"+"</td>");
%>
</div>
</body>
</html>