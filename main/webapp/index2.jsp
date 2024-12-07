<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E Learning</title>
<%@include file="Components/css_files.jsp" %>
<link rel="icon" type="image/jpeg" href="images/icon.jpg" />
<style type="text/css">
    .back-img {
        background: url("images/lms-.jpg");
        height: 80vh;
        width: 100%;
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
</head>
<body style="background-color: #fcf7f7;">
<%@include file="Components/navbar1.jsp" %>
<div class="container-fluid back-img">
    <br>
    <h2 class="text-center text-custom-white">Course Management System</h2>
    <br>
</div>
<div class="container-fluid" style="background: linear-gradient(to right, #8B4513, #A0522D); padding: 50px 0;">
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
                        <a href="" class="btn btn-danger btn-sm">See more</a>
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
                        <a href="" class="btn btn-danger btn-sm">See more</a>
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
                        <a href="" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/iot.jpg" class="card-img-top" alt="iot">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Internet Of Things</strong></p>
                    </div>
                    <div class="card-footer">
                       <p class="card-text" style="font-size: 16px;"><strong>IOT</strong></p>
                        <a href="" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 text-center">
                    <img src="images/ece.jpeg" class="card-img-top" alt="ece">
                    <div class="card-body">
                        <p class="card-text" style="font-size: 24px;"><strong>Electrical Engineering</strong></p>
                    </div>
                    <div class="card-footer">
                       <p class="card-text" style="font-size: 16px;"><strong>EEE</strong></p>
                        <a href="" class="btn btn-danger btn-sm">See more</a>
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
                        <a href="" class="btn btn-danger btn-sm">See more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="Components/footer.jsp" %>
</body>
</html>
