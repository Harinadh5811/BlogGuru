<!DOCTYPE html>
<html>

<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
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

        h1 {
            text-align: center;
            color: #333332;
        }

        form {
            text-align: left;
            margin: 0;
        }

        label {
            display: block;
            margin: 10px 0;
            font-weight: bold;
            color: #333332;
        }

        input[type="text"],
        input[type="file"] {
            width: 95%;
            padding: 10px;
            margin-bottom: 10px;
            border: 2px solid #333332;
            border-radius: 10px;
        }

        /* Style the button */
        .submit-button {
            background-color: #444; /* Change the button color to grey */
            color: #fff;
            border: none;
            border-radius: 10px;
            padding: 12px 24px;
            cursor: pointer;
            font-weight: bold;
        }

        .submit-button:hover {
            background-color: #222; /* Darker grey for hover */
        }

        /* Style the textarea to fit within the container */
        textarea {
            width: 100%; /* Adjusted to 100% */
            padding: 10px;
            margin-bottom: 10px;
            border: 2px solid #333332;
            border-radius: 10px;
        }

        /* Add your own additional styles or customizations here */

        /* Added some icons and styling */
        .icon {
            font-size: 24px;
            margin-right: 10px;
        }
    </style>
    <title>Create a Blog Post</title>
</head>

<body style="background-image: url('images/fashionjpg.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center center;">
    <div>
        <%@ include file="UpdatedNavBar.jsp" %>
    </div>
    <div class="container">
        <form method="post" action="processpost" enctype="multipart/form-data">
            <div class="form-group">
                <label for="author"><i class="icon fas fa-user"></i> Author:</label>
                <input type="text" name="author" id="author" required>
            </div>

            <div class="form-group">
                <label for="title"><i class="icon fas fa-heading"></i> Title:</label>
                <input type="text" name="title" id="title" required>
            </div>
            
            <div class="form-group">
                <label for="title"><i class="icon fas fa-heading"></i>Add image:</label>
                <input type="file" id="image" name="image" required>
            </div>

            <div class="form-group">
                <label for="text"><i class="icon fas fa-pencil-alt"></i> Text:</label>
                <textarea name="content" id="content" rows="5" required></textarea>
            </div>

         <button type="submit" class="submit-button" style="display: block; margin: 0 auto;"><i class="icon fas fa-paper-plane"></i> Create Post</button>
        </form>
    </div>
</body>

</html>
