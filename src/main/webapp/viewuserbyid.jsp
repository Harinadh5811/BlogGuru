<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 


<%@ include file="adminnavbar.jsp" %>


ID : ${user.id}<br>
Name : ${user.name}<br>
Gender : ${user.gender}<br>
DateofBirth : ${user.dateofbirth}<br> 
Email : ${user.email}<br>
Location : ${user.location}<br>
Contact No : ${user.contact}<br>
Status : ${user.active}

</body>
</html>