<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
statistics-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 50px;
    animation: fallIn 1.5s ease-in-out;
}

@keyframes fallIn {
    0% {
        transform: translateY(-20px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}

.statistics-box {
    flex: 1;
    max-width: 300px;
    background-color: #f5f5f5; /* Light gray background */
    padding: 20px;
    margin: 10px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    border-radius: 10px;
    transition: all 0.3s ease-in-out;
}

.statistics-box:hover {
    transform: scale(1.05); /* Slight zoom on hover */
    background-color: #e7c798; /* Light yellow background on hover */
}

.statistics-box h3 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #333; /* Dark gray color for headings */
}

.statistics-box p {
    font-size: 36px;
    margin: 0;
    color: #008000; /* Green color for the number values */
}


</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<div class="statistics-box">
        <h3>Users Count</h3>
        <p id="anotherStatCount">${ucount}</p>
    </div>
 
</body>
</html>

 
