<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <h1 class="text-center">About Us</h1>
    <div class="row">
        <div class="col-md-4">
            <div class="card mb-3">
                <img src="images/image1.jpg" class="card-img-top" alt="Image 1">
                <div class="card-body">
                    <h5 class="card-title">Harinadh</h5>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-3">
                <img src="images/image2.jpg" class="card-img-top" alt="Image 2">
                <div class="card-body">
                    <h5 class="card-title">Dilesh Sai Teja</h5>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-3">
                <img src="image3.jpg" class="card-img-top" alt="Image 3">
                <div class="card-body">
                    <h5 class="card-title">Narayana</h5>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
