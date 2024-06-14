<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<html>
<head>
 <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    .container {
    max-width: 400px;
    margin: 20px auto; /* Center the container horizontally */
    padding: 20px;
    background-color: #fff; /* Change the background color to white */
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center; /* Center the content inside the container */
    margin-left: 150px; /* Add margin to the left */
  }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      font-weight: bold;
      color: #333332;
    }
    .form-group input[type="text"],
    .form-group input[type="date"],
    .form-group input[type="email"],
    .form-group input[type="password"],
    .form-group input[type="radio"],
    .form-group input[type="text"],
    .form-group input[type="radio"] {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }
    .form-group input[type="radio"],
    .form-group input[type="radio"],
    .form-group input[type="radio"] {
      margin-right: 10px;
    }
    .form-group .button {
      background-color: #333332;
      color: #fff;
      padding: 15px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 18px;
    }
    .form-group .button:hover {
      background-color: #005eaa;
    }
    .message {
      text-align: center;
      color: red;
      font-weight: bold;
    }
    a {
      text-decoration: none;
      color: #0078d4;
    }
    a:hover {
      text-decoration: underline;
    }
    /* Improved styling for labels and form elements */
    label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
      color: #333;
    }
    input[type="text"],
    input[type="date"],
    input[type="email"],
    input[type="password"],
    input[type="radio"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      margin-bottom: 10px;
    }
    input[type="radio"] {
      margin-right: 5px;
    }
    .button {
      background-color: #333332;
      color: #fff;
      padding: 12px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 18px;
    }
    .button:hover {
      background-color: #005eaa;
    }
    
  </style>
</head>
<body style="background-image: url('images/pointsforblog.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.5);">
  <%@ include file="navbar.jsp" %>

  <div class="container">
    <h3 align="center"><u>User Registration</u></h3>
    <form method="post" action="insertuser">
      <table align="center">
        <tr>
          <td><label>Name</label></td>
          <td><input type="text" name="name" required="required" class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
  <td><label>Gender</label></td>
  <td>
    <select name="gender" class="form-group gender" required>
      <option value="Select gender" disabled selected>Select gender</option>
      <option value="MALE">Male</option>
      <option value="FEMALE">Female</option>
    </select>
  </td>
</tr>


        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Date of Birth</label></td>
          <td><input type="date" name="dob" required="required" class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Email ID</label></td>
          <td><input type="email" name="email" required class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Password</label></td>
          <td><input type="password" name="pwd" required class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Location</label></td>
          <td><input type="text" name="location" required class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Contact No</label></td>
          <td>
            <input type="text" name="contact" pattern="[789][0-9]{9}" placeholder="Must be 10 digits" required class="form-group" />
          </td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr align="center">
          <td colspan="2"><input type="submit" value="Register" class="form-group button" style="background-color: #333;"></td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
