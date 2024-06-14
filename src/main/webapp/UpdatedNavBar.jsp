<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color: #333;
      overflow: hidden;
      font-size: 16px;
    }

    .navbar a {
      float: left;
      display: block;
      color: #fff;
      text-align: center;
      padding: 10px 16px;
      text-decoration: none;
    }

    .navbar a:hover {
      color: #1da10e;
    }

    .navbar .right-side {
      float: right;
    }
    
    .navbar .left-side {
      float: left;
    }
    
    .navbar .services a {
      font-size: 16px;
    }

    .navbar .menu-icon {
      display: none;
    }

    .rounded {
      border-radius: 15%;
    }

    /* Style for the profile link on the right side */
    .navbar .profile-link {
      float: right;
      padding: 10px 16px;
    }
    
    /* Add margin-right for the Logout link to create space */
    .navbar .logout-link {
      margin-right: 10px;
    }

    /* Add margin-right for the Contact Us link to create space */
    .navbar .contactus-link {
      margin-right: 450px; /* Adjust the value as needed to control the space */
    }
  </style>
  <title>The Blog Guru</title>
</head>
<body>
  <!-- Navbar -->
  <div class="navbar">
    <div class="right-side">
      <a href="userhome.jsp">
        <img src="images/MainLogo.png" alt="Home Icon" class="nav-icon rounded" width="110" height="40">
      </a>
      <a href="createblog.jsp">Create Blog</a>
      <a href="userblogs1">Recent Blogs</a>
      <a href="contactus" class="contactus-link">Contact Us</a> <!-- Added the Contact Us link class with margin-right -->
      <a href="lougout.jsp" class="logout-link">Logout</a> <!-- Added the Logout link class with margin-right -->
      <a href="UserProfile.jsp" class="profile-link">Profile</a> <!-- Moved Profile link to the right -->
      <div class="menu-icon" onclick="toggleMenu()">
        <div class="bar"></div>
        <div class="bar"></div>
        <div class "bar"></div>
      </div>
    </div>
  </div>
</body>
</html>
