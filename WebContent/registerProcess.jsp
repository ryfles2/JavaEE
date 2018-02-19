<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, model.*" %>
<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<%

String mail = request.getParameter("mailR");
String password = request.getParameter("passwordR");
String password2 = request.getParameter("password2R");
String name = request.getParameter("nameR");
int phone =  Integer.parseInt(request.getParameter("phoneR"));
System.out.println(request.getParameter("passwordR")+" "+request.getParameter("password2R"));
if(dao.checkUserExist(mail))
{
	String site = new String("register.jsp?eType=2");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
	
} 
else if(!password.equals(password2))
{
	
	System.out.append(request.getParameter("passwordR")+" "+request.getParameter("password2R"));
		String site = new String("register.jsp?eType=1");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", site); 
}
else 
{
	User u = new User();
	u.setMail(mail);
	u.setName(name);
	u.setPassword(password);
	u.setPhone(phone);
	dao.addNewUser(u);
	String site = new String("login.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
}

%>
