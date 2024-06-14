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
      background-color: #17202f;
      overflow: hidden;
      font-size: 16px;
      font-family: 'Poiret ', cursive; 
    }

    .navbar a {
      float: left;
      display: block;
      color: #fff;
      text-align: center;
      padding: 0px 16px;
      text-decoration: none;
    }
    
    .navbar a:hover {
      
      color: #1da10e;
    }

    .navbar .left-side {
      float: center;
    }

    .navbar .right-side {
      float: right;
    }

    .navbar .Login-SignUp {
      font-size: 25px;
    }

    .navbar .services a {
      font-size: 25px;
    }

    .navbar .menu-icon {
      display: none;
    }
  </style>
  <title>The Blog Guru</title>
</head>
<body>
  <!-- Navigation Bar -->
  <div class="navbar">
    <div class="left-side">
      <a href="userlogin" class="Login-SignUp">Login / Sign Up</a>
    </div>
    <div class="right-side">
      <div class="services">
        
        <a href="contactout.jsp">Contact Us</a>
      </div>
      <div class="menu-icon" onclick="toggleMenu()">
        <div class="bar"></div>
        <div class "bar"></div>
        <div class="bar"></div>
      </div>
    </div>
  </div>
</body>
</html>
