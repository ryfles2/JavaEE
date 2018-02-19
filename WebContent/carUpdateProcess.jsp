<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, model.*" %>
<jsp:useBean id="dao" class="database.DataBase" scope="application"></jsp:useBean>
<%

String name = request.getParameter("name");
String description = request.getParameter("description");
String model = request.getParameter("model");
int year = Integer.parseInt(request.getParameter("year"));
int price = Integer.parseInt(request.getParameter("price"));
String link = request.getParameter("link");
Car c = new Car();
//Car c = dao.getCarById(Integer.parseInt(request.getParameter("ID")));
int tempID= Integer.parseInt(request.getParameter("ID"));
c.setID(tempID);
c.setLink(link);
c.setName(name);
c.setDescription(description);
c.setModel(model);
c.setPrice(price);
c.setYear(year);



dao.UpdateCarByID(c);
String site = new String("myCar.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); 
%>
