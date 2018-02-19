<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, model.*" %>
<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<%

String mail = request.getParameter("mail");
String password = request.getParameter("password");

if(dao.checkUserLogin(mail, password))
{
	session.setAttribute("loginUser", true);
	String site = new String("index.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
	User u = dao.getUserByMail(mail);
	session.setAttribute("idUser", u.getID());
	
} else 
{
	String site = new String("login.jsp?error=true");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
	   }

%>
