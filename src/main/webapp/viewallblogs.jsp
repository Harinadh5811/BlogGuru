<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style>
</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<br>

<h3 align="center"><u>All Blogs</u></h3>

<table align="center" border="2">
  <tr bgcolor="black" style="color: white">
    <td>ID</td>
    <td>AUTHOR NAME</td>
    <td>BLOG TITLE</td>
    <td>BLOG CONTENT</td>
    <td>IMAGE</td>
    <td>ACTION</td>
  </tr>
  <c:forEach items="${userdata}" var="user">
    <tr>
      <td><c:out value="${user.id}" /></td>
      <td><c:out value="${user.authorName}" /></td>
      <td><c:out value="${user.postTitle}" /></td>
      <td><c:out value="${user.postContent}" /></td>
      <td> 

<img src='displayimage?id=${user.id}' width="50%" height="20%"> 


</td>
      <td>
<a href='<c:url value="deletepost/${user.id}"></c:url>'>Delete</a>
</td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
