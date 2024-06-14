<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>Process Blog Post</title>
</head>
<body>
    <h1>Processing Blog Post</h1>
    <div class="navbar">
        <a href="index" class="logo">Blog</a>
        <div class="services">
            <li><a href="userhome">Home</a></li>
            <li><a href="#">View All Post</a></li>
            <li><a href="#">Update Profile</a></li>
            <li><a href="userlogout">Logout</a></li>
        </div>
    </div>

    <%-- Retrieve form parameters --%>
    <%
        String title = request.getParameter("title");
        String text = request.getParameter("text");

        // Handle the uploaded image (you'd need Java code for image processing and storage)

        // You need to save the image to a server directory and then serve it via an <img> element
    %>

    <p>Title: <%= title %></p>
    <p>Text: <%= text %></p>

    
</body>
</html>
