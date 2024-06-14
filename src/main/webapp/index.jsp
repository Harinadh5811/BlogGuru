<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        /* Reset default margin and padding */
        body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            overflow: hidden; 
        }

        /* Video container covering the entire viewport */
        .video-container {
            position: absolute;
          		 top: 30;
   				 left: 0;
    			width: 100%;
    			height: 700px; /* Set a fixed height in pixels */
    			z-index: -1; 
        }

        /* Style your video */
        video {
            object-fit: cover; /* Cover the entire container */
            width: 100%;
            height: 100%;
        }

        ul {
            list-style: none;
            background-color: #333; /* Match the navbar background */
            overflow: hidden;
            font-size: 16px;
        }

        ul li {
            float: left;
            margin-right: 20px;
        }

        ul li a {
            display: block;
            color: #fff; /* White text color */
            text-align: center;
            text-decoration: none;
            padding: 14px 16px;
        }

        ul li a:hover {
            background-color: #555; /* Darken the background on hover */
            color: #ff6c00; /* Orange text color on hover */
        }
    </style>
</head>
<body>
    <!-- Your navbar goes here -->
    <%@ include file="navbar.jsp" %>

    <!-- Video background -->
    <div class="video-container">
        <video autoplay muted loop>
            <source src="Vid/MainVid.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </div>
</body>
</html>
