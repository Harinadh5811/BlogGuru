<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    .form-group input[type="text"],
    .form-group input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .form-group .button {
      background-color: #008000; /* Green button color */
      color: #fff;
      padding: 10px 15px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .form-group .button:hover {
      background-color: #006400; /* Darker green on hover */
    }
    .message {
      text-align: center;
      color: red;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <%@ include file="navbar.jsp" %>
  <div class="container">
    <h3 class="message">${message}</h3>
    <h3 style="text-align: center;"><u>Moderators Login</u></h3>
    <form method="post" action="checkadminlogin">
      <div class="form-group">
        <label for="uname">Uname</label>
        <input type="text" name="uname" id="uname" required>
      </div>
      <div class="form-group">
        <label for="pwd">Pwd</label>
        <input type="password" name="pwd" id="pwd" required>
      </div>
      <div class="form-group" align="center">
        <input type="submit" value="Login" class="button">
      </div>
    </form>
  </div>
</body>
</html>
