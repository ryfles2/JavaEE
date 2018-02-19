<%@ include file="header.jsp" %>
<%
dao.deleteCar(Integer.parseInt(request.getParameter("ID")));
String site = new String("myCar.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
 	
%>