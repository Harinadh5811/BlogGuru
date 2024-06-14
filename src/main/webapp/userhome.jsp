<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
  <link rel="icon" href="images/favicon.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    body {
     background-image: url('images/pointsforblog.jpg'); /* Replace with the path to your image */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
      text-align: center; /* Center the content */
    }

    .container {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .message {
      text-align: center;
      color: #e74c3c;
      font-weight: bold;
      margin-top: 20px;
    }

    a {
      text-decoration: none;
      color: #3498db;
    }

    a:hover {
      text-decoration: underline;
    }

    /* Add styles for the centered video */
    video {
      margin: 0;
      margin-top: 15px;
      margin-left: 20px;
      border-radius: 100px;
      width: 40%; /* Adjust the width as needed */
    }

    /* Create a container on the right */
    .get-started-container {
      text-transform: uppercase; /* Convert text to all caps */
      margin-right: 300px;
      padding-top: 10px;
      margin-top: 10px;
    }

    /* Center the button within the container and set a fixed height and width with hover effect */
    .create-blog-button {
      display: inline-block;
      background: #3498db;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 100px;
      margin: 10px;
      text-decoration: none;
      font-weight: bold;
      font-size: 16px;
     
      
      font-size: 16px;
      display: block;
      margin-bottom: 10px;
      height: 50px; /* Set a fixed button height */
      width: 200px; /* Set a fixed button width */
      
    }

    .create-blog-button:hover {
      background: #ff8c00; /* Change background color on hover */
    }
  </style>
</head>
<body >
  <%@ include file="UpdatedNavBar.jsp" %>

  <div class="container">
    <!-- Add the video element here -->
    <video autoplay loop muted>
      <source src="Vid/homevid.mp4" type="video/mp4">
      Your browser does not support the video tag.
    </video>

    <!-- Create a container on the right labeled "Get Started" -->
    <div class="get-started-container">
   <b> <h1 style="font-family: 'Poiret One', sans-serif; text-transform: uppercase;">GET STARTED</h1>
     </b> <br>
      <a href="createblog.jsp">
        <button class="create-blog-button">Create New Blog</button>
      </a>
      <a href="niche.jsp">
        <button class="create-blog-button">Find Your Niche</button>
      </a>
      <a href="tips.jsp">
        <button class="create-blog-button">Tips For Effective Blogging</button>
      </a>
      <a href="userblogs1">
        <button class="create-blog-button">Read Blogs</button>
      </a>
    </div>
  </div>

</body>
</html>
