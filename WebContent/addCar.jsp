<%@ include file="header.jsp" %>
<div id="loginContent">
<form action="addCarProcess.jsp" method="post">
<table>
<tr>
<td>Model:</td><td><input type="text" name="model"/></td>
</tr>
<tr>
<td>Name:</td><td><input type="text" name="name"/></td>
</tr>
<tr>
<td>Year:</td><td><input type="text" name="year"/></td>
</tr>
<tr>
<td>Price:</td><td><input type="text" name="price"/></td>
</tr><tr>
<td>Photo:</td><td><input type="text" name="link"/></td>
</tr>
<tr>
<td>Description:</td><td><textarea rows="4" cols="35" name="description">The maximum number is 300 characters.</textarea></td>
</tr>

</table>
<center><input type="submit" value="Add a car"/></center>
</form>  
</body>
</html>