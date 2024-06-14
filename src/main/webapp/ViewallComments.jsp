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
 
<h3 align="center"><u>View All Comments</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>COMMENT ID</td> 
<td>COMMENT CONTENT</td>  
<td>USER NAME</td> 
<td>ACTION</td>
</tr> 
 <c:forEach items="${userdata}"  var="user"> 
<tr> 
<td><c:out value="${user.commentId}" /></td> 
<td><c:out value="${user.commentContent}" /></td> 
<td><c:out value="${user.userName}" /></td> 

<td>
<a href='<c:url value="deletecmt/${user.commentId}"></c:url>'>Delete</a>
</td>
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>