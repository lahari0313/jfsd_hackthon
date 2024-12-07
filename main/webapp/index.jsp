<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Management</title>
<%@include file="Components/css_files.jsp" %>
<link rel="icon" type="image/jpeg" href="images/icon.jpg" />
<style type="text/css">
    body {
        background: url("images/bg5.jpg") no-repeat center center fixed;
        background-size: cover;
        font-family: 'Roboto', sans-serif;
    }
    .overlay {
        background: rgba(252, 247, 247, 0.8);
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
    }
    .container-fluid {
        position: relative;
        z-index: 1;
    }
    .back-img h2 {
        font-size: 3em;
        color: #fff;
        text-shadow: 2px 2px 4px #000;
    }
    .text-custom-white {
        color: #fff;
    }
    .text-highlight {
        color: #f8d210;
        text-shadow: 2px 2px 4px #000;
    }
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>
<div class=""></div>
<div class="container-fluid" style="background: rgba(0, 0, 0, 0.8); padding: 50px 0;">
<br>
    <h2 class="text-highlight text-center">Project Management System</h2>
    <br>
    <h3 class="text-center text-white mb-5">Branches</h3>
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/cse.jpg" class="card-img-top" alt="cse">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Computer Science & Engineering</strong></p>
                    </div>
                    <div class="card-footer">
                        <p class="card-text" style="font-size: 16px;"><strong>CSE</strong></p>
                        <a href="https://en.wikipedia.org/wiki/Computer_science_and_engineering" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/bio.png" class="card-img-top" alt="bio">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Bio Technology</strong></p>
                    </div>
                    <div class="card-footer">
                        <p class="card-text" style="font-size: 16px;"><strong>BIO</strong></p>
                        <a href="https://en.wikipedia.org/wiki/Biotechnology" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/mech.jpeg" class="card-img-top" alt="mech">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Mechanical Engineering</strong></p>
                    </div>
                    <div class="card-footer">
                        <p class="card-text" style="font-size: 16px;"><strong>MECH</strong></p>
                        <a href="https://en.wikipedia.org/wiki/Mechanical_engineering" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/iot.jpg" class="card-img-top" alt="iot">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Internet On Things</strong></p>
                    </div>
                    <div class="card-footer">
                        <p class="card-text" style="font-size: 16px;"><strong>IOT</strong></p>
                        <a href="https://en.wikipedia.org/wiki/Internet_of_things" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/ece.jpeg" class="card-img-top" alt="eee">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Electrical Engineering</strong></p>
                    </div>
                    <div class="card-footer">
                        <p class="card-text" style="font-size: 16px;"><strong>EEE</strong></p>
                        <a href="https://en.wikipedia.org/wiki/Electrical_engineering#:~:text=Electrical%20engineering%20is%20an%20engineering,electricity%2C%20electronics%2C%20and%20electromagnetism." class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/aids.jpg" class="card-img-top" alt="aids">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Artificial Intelligence & Data Science</strong></p>
                    </div>
                    <div class="card-footer">
                        <p class="card-text" style="font-size: 16px;"><strong>AIDS</strong></p>
                        <a href="https://en.wikipedia.org/wiki/Artificial_intelligence" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="Components/footer.jsp" %>
</body>
</html>
