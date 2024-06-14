<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 
 
 <%@ include file="adminnavbar.jsp" %>
 
<br> 
 
<h3 align="center"><u>View Feedback</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>FEEDBACK</td>  

 <c:forEach items="${userfeedback}"  var="user"> 
<tr> 
<td><c:out value="${user.id}" /></td> 
<td><c:out value="${user.feedbackContent}" /></td> 

</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>