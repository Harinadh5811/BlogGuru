<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #333;
            color: #fff;
        }

        .logout-container {
            text-align: center;
            margin-top: 50px;
        }

        .logout-title {
            font-size: 40px; /* Increased font size */
            color: #ffcc00; /* Yellow color */
            margin-bottom: 10px;
        }

        .logout-message {
            font-size: 24px; /* Increased font size */
            margin-bottom: 20px; /* Increased margin */
        }

        .thank-you-animation {
            font-size: 36px; /* Increased font size */
            color: #ffcc00;
            animation: thankYou 2s ease-in-out 1;
        }

        @keyframes thankYou {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        .feedback-form {
            margin-top: 30px;
        }

        .feedback-form textarea {
            width: 80%;
            padding: 20px; /* Increased padding */
            font-size: 20px; /* Increased font size */
            border: 2px solid #fff; /* White border */
            border-radius: 10px;
            background-color: #fff;
            color: #333;
        }

        .submit-button {
            background-color: #ffcc00;
            color: #333; /* Grey text color */
            padding: 15px 30px; /* Increased padding */
            border: none;
            cursor: pointer;
            font-size: 20px; /* Increased font size */
            margin-top: 20px; /* Increased margin */
        }

        .submit-button:hover {
            background-color: #ff9900; /* Darker yellow for hover */
        }

        .return-home {
            margin-top: 40px; /* Increased margin */
        }

        .return-home a {
            text-decoration: none;
            color: #fff;
            font-size: 20px;
        }

        .return-home a:hover {
            text-decoration: underline;
        }
    </style>
    <title>Logout</title>
</head>
<body>
    <div class="logout-container">
        <h1 class="logout-title"><i class="fas fa-sign-out-alt"></i> Logout Successful</h1>
        <p class="logout-message">You have been successfully logged out.</p>
        <p class="thank-you-animation">Namaste! <i class="fas fa-praying-hands"></i> Thank You</p>
        <div class="feedback-form" >
        <form method="post" action="feedbackregister">
            <p>Feel free to provide feedback:</p>
            <textarea rows="4" placeholder="Your feedback..." id="feedback" name="feedback"></textarea>
            <p>
                <button class="submit-button">Submit</button>
            </p>
            </form>
        </div>
        <div class="return-home">
            <a href="index.jsp"><i class="fas fa-home"></i> Return to Home Page</a>
        </div>
    </div>
</body>
</html>
