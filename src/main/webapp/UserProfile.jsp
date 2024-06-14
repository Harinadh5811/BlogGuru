<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #0078d4;
        }

        .session-variable {
            margin: 10px 0;
            font-size: 18px;
            color: #333;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 3px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #005a9e;
        }
    </style>
</head>
<body>
<%@ include file="UpdatedNavBar.jsp" %>
<div class="container">
    <h2>User Details</h2>
    <div class="session-variable"><b>Name:</b> <%= session.getAttribute("uname") %></div>
    <div class="session-variable"><b>Email:</b> <%= session.getAttribute("uemail") %></div>
    <div class="session-variable"><b>Gender:</b> <%= session.getAttribute("ugender") %></div>
    <div class="session-variable"><b>Date of Birth:</b> <%= session.getAttribute("udob") %></div>
    <div class="session-variable"><b>Location:</b> <%= session.getAttribute("ulocation") %></div>
    <div class="session-variable"><b>Contact Number:</b> <%= session.getAttribute("ucontactno") %></div>

    <!-- Button to get details -->
    <form action="GetDetails" method="get">
        <input type="hidden" name="id" value="<%= session.getAttribute("uid") %>">
        <button type="submit">Update My Details</button>
    </form>

    <!-- Display details here if retrieved -->

</div>
</body>
</html>
