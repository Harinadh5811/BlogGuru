<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
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
  <%@ include file="navbar.jsp" %>
  
  <div class="container">
    <h3 align="center">Get in touch</h3>
    <div class="contact-info">
      <h3>Address</h3>
      <p>Green Fields</p>
      <p>Vadeswaram</p>
      <p>India</p>
    </div>
    <div class="contact-info">
      <h3>Phone</h3>
      <p>1231231234</p>
    </div>
  </div>

  <div class="funny-elements">
    <h3>Funny Elements</h3>
    <p>Enjoy some entertaining animations below:</p>
    <div class="animation-container">
      <div class="animation-item">
        <i class="fas fa-coffee fa-4x"></i>
        <p>☕ Grab a coffee</p>
      </div>
      <div class="animation-item">
        <i class="fas fa-guitar fa-4x"></i>
        <p>🎸 Play some music</p>
      </div>
      <div class="animation-item">
        <i class="fas fa-book fa-4x"></i>
        <p>📚 Read a book</p>
      </div>
      <div class="animation-item">
        <i class="fas fa-paint-brush fa-4x"></i>
        <p>🎨 Paint something</p>
      </div>
      <div class="animation-item">
        <i class="fas fa-gamepad fa-4x"></i>
        <p>🎮 Play video games</p>
      </div>
      <div class="animation-item">
        <i class="fas fa-film fa-4x"></i>
        <p>🎥 Watch a movie</p>
      </div>
      <div class="animation-item">
        <i class="fas fa-dance fa-4x"></i>
        <p>💃 Dance like nobody's watching</p>
      </div>
    </div>
  </div>
</body>
</html>
