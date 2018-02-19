<%@ include file="header.jsp" %>
<div id="content">
<center>
<table>
<tr>
<td>Model</td>
<td>Name</td>
<td>Year</td>
<td>Price</td>
<td>Photo</td>
</tr>
<%
	
	List<Car> car = dao.getCarByIdOwner(Integer.parseInt(session.getAttribute("idUser").toString()));
	for(Car c : car){
	User u = dao.getUserById(c.getIDusers());
	out.append("<tr>");
	out.append("<td><h7><a href=carMy.jsp?ID="+c.getID()+">"+c.getModel()+"</a></h7></td>");
	out.append("<td>"+c.getName()+"</td>");
	out.append("<td>"+c.getYear()+"</td>");
	out.append("<td>"+c.getPrice()+"</td>");
	out.append("<td>"+"<image src="+c.getLink()+" height=\"50\"  width=\"100\">"+"</td>");
	out.append("</tr>");
	
}
	

	
%>

</table>
</center>
</div>
</body>
</html>