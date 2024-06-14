<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <style>
        body {
            background-color: #7fffae;
        }
        .blog-card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .blog-card {
            border: 1px solid #bbdefb;
            margin: 10px;
            padding: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            cursor: pointer;
            border-radius: 30px;
            width: calc(33.33% - 20px);
            min-width: 300px;
            margin-right: 120px;
            margin-left: 120px;
            position: relative;
        }
        .blog-card:hover {
            transform: scale(1.01);
        }
        .blog-image {
            margin-top: 10px;
            width: 130px;
            height: 130px;
            background-color: #e0e0e0;
            display: flex;
             margin-left: 170px;
        }
        .blog-details {
            padding: 10px;
        }
        .blog-title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }
        .blog-author {
            color: #666;
            margin: 10px 0;
        }
        .blog-content {
            margin: 10px 0;
            color: #444;
        }
        .blog-interactions {
            float: right;
            margin-top: 10px;
        }
        .interaction-button {
            margin-bottom: 10px;
        }
        .like-button, .comment-button {
            display: none; /* Hide the like and comment buttons */
            cursor: pointer;
            background-color: transparent;
            border: none;
            font-size: 24px;
            display: inline-block;
            margin-right: 10px;
        }
        .comment-input {
    width: 95%; /* Adjust the width as needed */
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    margin-right: 100px;
    display: inline-block; /* Display the text field as an inline-block element */
}

.add-comment-button {
    background-color: #4CAF50;
    border: none;
    font-size: 16px;
    color: #fff;
    padding: 10px 20px;
    border-radius: 5px;
    margin-top: 20px;
    margin-left: 130px;
    vertical-align: middle; /* Vertically align the button with the text field */
}
        .like-count, .comment-count {
            font-weight: bold;
            display: inline-block;
            margin-right: 10px;
        }
        .button-container {
            display: inline-block;
            vertical-align: middle;
        }
        .view-comments-button {
            background-color: #4CAF50;
            border: none;
            font-size: 16px;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            margin-left: 122px; /* Add margin to separate it from the "Add Comment" button */
        }
        .comments-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .comment-window {
            border-radius: 5%;
            padding: 10px;
            width: 80%;
            margin: 10px;
            text-align: center;
        }
        .backbutton a {
            display: inline-block;
            background-color: #FF0000; /* Red background color */
            color: #FFFFFF; /* White text color */
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            /* Initially hide the "Back" button */
        }

        .backbutton a:hover {
            background-color: #FF3333; /* Lighter red on hover */
        }
        
        .unamec
        {
            display:none;
        }
    </style>
</head>
<body style="background-color: #7fffae;">

<%@ include file="UpdatedNavBar.jsp" %>

<br>

<h3 align="center"><u>All Blogs</u></h3>
<div class="blog-card-container">
    <c:forEach items="${userdata1}" var="user" varStatus="loop">
        <div class="blog-card" style="background-color: ${loop.index % 2 == 0 ? '#3690ca' : '#f6b944'}">
            <div class="blog-image" align="center">
                <img src='displayimage?id=${user.id}' width="130px" height="130px" style="display: block; margin: 0 auto;">
            </div>
            <div class="blog-details">
                <div class="blog-title" align="center"><b>Title : </b><c:out value="${user.postTitle}" /></div>
                <div class="blog-author" align="center"><b>Written By</b><br><c:out value="${user.authorName}" /></div>
                <div class="blog-content" align="center"><b>Content</b><br><c:out value="${user.postContent}" /></div>
                <div class="blog-interactions">
                    <div class="interaction-button">
                        <button onclick="likeBlog(this)" class="like-button"><i class="fas fa-heart"></i></button>
                    </div>
                    <div class="interaction-button">
                        <button onclick="toggleCommentInput(this)" class="comment-button"><i class="fas fa-comment"></i></button>
                        <form action="addComment" method="post">
                          <div class="unamec">
                            <input type="text" name="YourUsername" placeholder="Enter Username" class="comment-input" value="${uname}" readonly />
						  </div>
                            <input type="text" name="commentContent" placeholder="Add a comment" class="comment-input" />
                            <input type="hidden" name="postId" value="${user.id}" />
                            <button type="submit" class="add-comment-button">Add Comment</button>
                        </form>
                    </div>
                    <div class="interaction-button">
                        <form action="viewComments" method="get">
                            <input type="hidden" name="postId" value="${user.id}" />
                            <button id="viewCommentsButton" type="submit" class="view-comments-button view-comments-button-toggle">View Comments</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<div class="comments-container">
    <c:forEach items="${comments}" var="comment" varStatus="loop">
        <c:if test="${not empty comment.userName and not empty comment.commentContent}">
            <div class="comment-window" style="background-color: ${loop.index % 2 == 0 ? '#f6b944' : '#3690ca'};">
                <div class="comment-author">
                    <b>User : <c:out value="${comment.userName}" /></b>
                </div>
                <div class="comment-content">
                    <c:out value="${comment.commentContent}" />
                </div>
            </div>
        </c:if>
    </c:forEach>
    <div class="backbutton" id="backButton" style="display: none;">
        <a href="userblogs1">Back</a>
    </div>
</div>
<script>
    document.getElementById("viewCommentsButton").addEventListener("click", function() {
        document.getElementById("backButton").style.display = "inline-block";
    });
    
    document.getElementById("viewCommentsButton").addEventListener("click", function() {
        document.getElementById("backButton").style.display = "inline-block";
        document.getElementById("YourUsername").value = "${uname}"; // Set the value from the session variable
    });

</script>
</body>
</html>
