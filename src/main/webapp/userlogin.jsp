<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        /* Reset default margin and padding */
        body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Poppins', sans-serif; /* Change to Poppins font */
            background: #333; /* Match the navbar background color */
            color: #fff; /* White text color */
        }

        .blog-title h1 {
            font-family: 'Bauhaus 93', sans-serif;
            font-size: 36px;
            color: #333332;
            text-align: center;
            margin-top: 2rem;
        }

        .blog-title:hover h1 {
            color: #0000;
        }

        .container {
            max-width: 400px; /* Slightly reduce the container width */
            margin: 20px auto 0;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333332; /* Match the navbar's accent color */
        }

        .form-group input {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
        }

        .form-group .button {
            background-color: #197d7d;
            color: #fff;
            padding: 12px 20px; /* Slightly adjust button padding */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .form-group .button:hover {
            background-color: #333332;
        }

        .message {
            text-align: center;
            color: #333332;
            font-weight: bold;
        }

        a {
            text-decoration: none;
            color: #fe4f02; /* Match the navbar's accent color */
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-image: url('images/creative.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.5);">
    <%@ include file="navbar.jsp" %>
    <div class="blog-title">
        <h1 class="animated"><b>The Blog Guru</b></h1>
    </div>
    <div class="container">
        <h3 class="message">${message}</h3>
        <h3 style="text-align: center; color: #333332;"><b>User Login</b></h3>
        <form method="post" action="checkuserlogin">
            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" name="email" id="email" required>
            </div>
            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" name="pwd" id="pwd" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Login" class="button">
            </div>
        </form>
        <h3 style="text-align: center;color:#333332;">New Registration? <a href="userreg" style="color:#020700;">Click Here</a></h3>
    </div>
</body>
</html>
