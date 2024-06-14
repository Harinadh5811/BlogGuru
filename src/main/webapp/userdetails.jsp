<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .contact-info {
      margin-bottom: 20px;
    }
    .contact-info h3 {
      font-weight: bold;
    }
    .social-links {
      margin-top: 20px;
    }
    .social-links a {
      display: inline-block;
      margin-right: 20px;
      text-decoration: none;
      color: #0078d4;
      font-size: 20px;
    }
    a:hover {
      text-decoration: underline;
    }
    /* Additional Styles */
    .funny-elements {
      text-align: center;
      padding: 20px;
      background-color: #f0f0f0;
      border-radius: 5px;
      margin-top: 20px;
    }
    .animation-container {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    .animation-item {
      width: 30%;
      margin: 10px;
      padding: 10px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
      transition: transform 0.3s;
    }
    .animation-item:hover {
      transform: scale(1.05);
    }
  </style>
</head>
<body>
  <%@ include file="UpdatedNavBar.jsp" %>

Name : ${user.name}<br>
Gender : ${user.gender}<br>
DateofBirth : ${user.dateofbirth}<br> 
Email : ${user.email}<br>
Location : ${user.location}<br>
Contact No : ${user.contact}<br>

</body>
</html>
