<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f1f1f1;
    text-align: center;
}

.container {
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
    margin: 0 auto;
    max-width: 600px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
}

form {
    text-align: left;
    margin: 0 auto;
    width: 80%;
}

label {
    display: block;
    margin: 10px 0;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="file"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Add your own additional styles or customizations here */
    
    </style>
    <title>Create a Blog Post</title>
</head>
<body>
    
    <div class="navbar">
        <a href="index" class="logo">Blog</a>
        <div class="services">
           <li><a href="userhome">Home</a></li>
  <li><a href="createpost">Create New Post</a></li>
  <li><a href="#">View My Post's</a></li>
  <li><a href="#">Update Profile</a></li>
  <li><a href="userlogout">SignOut</a></li>
        </div>
        </div>
    <form action="processpost" method="post" enctype="multipart/form-data">
        <label for="title">Heaing/Title Of the Blog:</label>
        <input type="text" name="title" id="title" required><br>
        
		<label for="image">Add image:</label>
        <input type="file" name="image" id="image"><br>
        
        <label for="text">Content:</label>
        <textarea name="text" id="text" rows="5" cols="40" required></textarea><br>

        

        <input type="submit" value="Create Post">
    </form>
</body>
</html>
    