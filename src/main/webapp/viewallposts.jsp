	<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<html>
	<head>
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<style>
	</style>
	</head>
	<body>
	
	<%@ include file="UpdatedNavBar.jsp" %>
	
	<br>
	
	<h3 align="center"><u>All Blogs</u></h3>
	
	<table align="center" border="2">
	  <tr bgcolor="black" style="color: white">
	    <td>AUTHOR NAME</td>
	    <td>BLOG TITLE</td>
	    <td>BLOG CONTENT</td>
	    <td>ACTION</td>
	  </tr>
	  <c:forEach items="${userdata}" var="user">
	    <tr>
	      <td><c:out value="${user.authorName}" /></td>
	      <td><c:out value="${user.postTitle}" /></td>
	      <td><c:out value="${user.postContent}" /></td>
	<td>
	<a href='<c:url value="view?id=${user.id}"></c:url>'>View</a>
	</td>
	    </tr>
	  </c:forEach>
	</table>
	
	</body>
	</html>
