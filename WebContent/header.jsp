<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, model.*" %>
<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="moj.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<title>Classic Garage</title>
</head>
<body>
<div id="butBar">
<a href="index.jsp">Classic Garage </a>
<%
if(session.getAttribute("loginUser")==null)
{
	out.append("<a href=\"viweCar.jsp\" id=\"tab\">View a cars</a>");
	out.append("<a href=\"contact.jsp\" id=\"tab\">Contact</a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a href=\"login.jsp\" id=\"tab\" >Login </a>");
	out.append("<a href=\"register.jsp?eType=0\" id=\"tab\">Register</a>");
}
else{
	String s = session.getAttribute("idUser").toString();
	int id = Integer.parseInt(s);
	User u = dao.getUserById(id);
	out.append("<a href=\"addCar.jsp\" id=\"tab\">Add a car  </a>");
	out.append("<a href=\"viweCar.jsp\" id=\"tab\">View a cars  </a>");
	out.append("<a href=\"myCar.jsp\" id=\"tab\">My cars  </a>");
	out.append("<a href=\"contact.jsp\" id=\"tab\">Contact</a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("<a id=\"tab\" ></a>");
	out.append("Hello "+u.getName());
	out.append("<a href=\"logout.jsp\" id=\"tab\">logout </a>");
}

%>
</div>
