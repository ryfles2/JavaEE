
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
	
	List<Car> car = dao.getAllCar();
	for(Car c : car){
	User u = dao.getUserById(c.getIDusers());
	out.append("<tr>");
	out.append("<td><h7><a href=car.jsp?ID="+c.getID()+">"+c.getName()+"</a></h7></td>");
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