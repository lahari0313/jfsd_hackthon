<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E Learning</title>
<%@include file="Components/css_files.jsp" %>
<link rel="icon" type="image/jpeg" href="images/icon.jpg" />
<style>
body {
    background: linear-gradient(to top, #000000, #333333);
    /* Black gradient background */
    font-family: 'Roboto', sans-serif;
    color: #fff;
    margin: 0;
    padding: 0;
}

.main-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    padding: 20px;
}

.signin-form {
    background: rgba(0, 0, 0, 0.9); /* Semi-transparent black background */
    padding: 2em;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
    /* Light shadow for contrast */
    width: 100%;
    max-width: 400px;
    color: #fff; /* White text for readability */
}

.signin-form h1 {
    text-align: center;
    margin-bottom: 1em;
}

.signin-form input {
    width: calc(100% - 20px);
    margin: 10px 0;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background: #333; /* Dark background for inputs */
    color: #fff; /* White text for inputs */
}

.signin-form input[type="submit"] {
    background-color: #000; /* Black background for submit button */
    color: white;
    border: none;
    cursor: pointer;
    margin-top: 10px; /* Margin at the top of the button */
}

.signin-form input[type="submit"]:hover {
    background-color: #444; /* Darker shade on hover */
}

.cards-container {
    background: url("images/bg5.jpg") no-repeat center center fixed;
    background-size: cover;
    padding: 50px 0;
    position: relative;
}

.cards-overlay {
    background: rgba(0, 0, 0, 0.7);
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
}

.cards-content {
    position: relative;
    z-index: 2;
}

.card {
    background: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
    border: none;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s;
}

.card:hover {
    transform: translateY(-10px);
}

.card img {
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}

.card-body {
    padding: 15px;
}

.card-text {
    color: #333; /* Dark text for readability */
}

.btn {
    background-color: #ff5722; /* Bright color for buttons */
    color: white;
    border: none;
    cursor: pointer;
}

.btn:hover {
    background-color: #e64a19; /* Darker shade on hover */
}
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>

<div class="cards-container">
    <div class="cards-overlay"></div>
    <div class="container cards-content">
        <h3 class="text-center text-white mb-5">Courses</h3>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/red.jpeg" class="card-img-top" alt="Java Full Stack Development">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Java Full Stack Development</strong></p>
                        <p class="card-text" style="font-size: 16px;"><strong>22SDCS03A</strong></p>
                        <a href="jfsd.jsp" class="btn btn-danger btn-sm">Go to Course</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/orange.jpeg" class="card-img-top" alt="Enterprise Programming">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Enterprise Programming</strong></p>
                        <p class="card-text" style="font-size: 16px;"><strong>22CI3004A</strong></p>
                        <a href="ep.jsp" class="btn btn-danger btn-sm">Go to Course</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/green.jpeg" class="card-img-top" alt="Compiler Design">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Compiler Design</strong></p>
                        <p class="card-text" style="font-size: 16px;"><strong>22CS2235</strong></p>
                       <a href="cd.jsp" class="btn btn-danger btn-sm">Go to Course</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/darkblue.jpg" class="card-img-top" alt="Design Analysis & Algorithms">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Design Analysis & Algorithms</strong></p>
                        <p class="card-text" style="font-size: 16px;"><strong>22CS2205A</strong></p>
                       <a href="daa.jsp" class="btn btn-danger btn-sm">Go to Course</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/blue.jpeg" class="card-img-top" alt="Mathematical Programming">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Mathematical Programming</strong></p>
                        <p class="card-text" style="font-size: 16px;"><strong>22MT2004</strong></p>
                        <a href="mp.jsp" class="btn btn-danger btn-sm">Go to Course</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/ruby.jpeg" class="card-img-top" alt="Cloud Infrastructure & Services">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Cloud Infrastructure & Services</strong></p>
                        <p class="card-text" style="font-size: 16px;"><strong>22CS2223</strong></p>
                        <a href="cis.jsp" class="btn btn-danger btn-sm">Go to Course</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="Components/footer.jsp" %>
</body>
</html>
