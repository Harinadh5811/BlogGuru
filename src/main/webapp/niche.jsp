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
      font-family: 'Poppins', Arial, sans-serif;
      background: #f5f5f5;
      margin: 0;
      padding: 0;
      color: #333;
      text-align: center;
    }

    .container {
      display: flex;
      align-items: center;
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }

    .content {
      background: #fff;
      border: 1px solid #ccc;
      border-radius: 10px;
      padding: 20px;
      text-align: left;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .content-left {
      flex: 1;
    }

    .content-right {
      flex: 1;
      text-align: left;
    }

    h1 {
      font-family: 'Poiret One', sans-serif;
      font-size: 36px;
      color: #3498db;
      margin: 10px 0;
    }

    p {
      font-size: 18px;
      line-height: 1.6;
      color: #555;
    }

    .image {
      width: 150%;
      max-width: 600px;
    }

    .bold-text {
      font-weight: bold;
    }

    .button {
      display: inline-block;
      background: #3498db;
      color: #fff;
      padding: 20px 40px;
      border: none;
      border-radius: 100px;
      margin: 10px;
      text-decoration: none;
      font-weight: bold;
      font-size: 16px;
    }
    
    .button1 {
      display: inline-block;
      background: #fc3441; /* Red color for the "Back" button */
      color: #fff;
      padding: 20px 40px;
      border: none;
      border-radius: 100px;
      margin: 10px;
      text-decoration: none;
      font-weight: bold;
      font-size: 16px;
    }

    .button:hover {
      background: #ff8c00; /* Change background color on hover */
    }
  </style>
</head>
<body>
  <%@ include file="UpdatedNavBar.jsp" %>

  <div class="container">
    <div class="content content-left">
      <img src="images/WhatsyourStory.jpg" alt="Image" class="image">
    </div>
    <div class="content content-right">
      <h1 style="text-decoration: underline;">Tips to Find Your Blogging Niche</h1><br>
      <p>
        <span class="bold-text">1. Identify your passions and interests:</span> Write down what you love, what you're knowledgeable about, and
        what excites you.
      </p>
      <p>
        <span class="bold-text">2. Research the market:</span> Look for trending topics and popular niches in the blogosphere.
      </p>
      <p>
        <span class="bold-text">3. Consider your target audience:</span> Who do you want to reach with your blog? Choose a niche that caters to
        their interests and needs.
      </p>
      <p>
        <span class="bold-text">4. Be unique:</span> Find a unique angle or perspective within your chosen niche.
      </p>
      <p>
        <span class="bold-text">5. Test and adapt:</span> Don't be afraid to experiment and adjust your niche as you learn what works best.
      </p>
      <p>
        Remember, your niche should be something you're passionate about and can consistently create content for.
      </p>
    </div>
  </div>
  <div class="buttons">
    <a href="createblog.jsp" class="button">Create Blog</a>
    <a href="userblogs.jsp" class="button">View User Blogs</a>
    <a href="tips.jsp" class="button">Tips For Effective Blog</a>
    <a href="userhome.jsp" class="button1">Home</a>
  </div>
  
</body>
</html>
