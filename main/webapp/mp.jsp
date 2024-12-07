<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course: MP</title>
<%@include file="Components/css_files.jsp" %>
<link rel="icon" type="image/jpeg" href="images/icon.jpg" />
<style>
    body {
        background-color: #fcf7f7;
        font-family: 'Roboto', sans-serif;
    }
    .container {
        margin-top: 50px;
    }
    .assignment-upload, .assignment-evaluation {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
    }
    .assignment-upload h2, .assignment-evaluation h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    .assignment-upload input[type="file"], .assignment-evaluation select, .assignment-evaluation textarea {
        width: calc(100% - 20px);
        margin: 10px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .assignment-upload input[type="submit"], .assignment-evaluation input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        margin-top: 10px;
    }
    .assignment-upload input[type="submit"]:hover, .assignment-evaluation input[type="submit"]:hover {
        background-color: #45a049;
    }
    
    .myStyle{
    	padding: 20px;
    	margin-bottom: 10px;
    }
    .cw-100{
    width: 100px; 
    }
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>
<div class="container">
    <div class="assignment-upload">
        <h2>Upload Assignment</h2>
        <form action="uploadAssignment.jsp" method="post" enctype="multipart/form-data">
            <div class="card myStyle">
            	<label for="assignment">Assignment 1</label>
            	<input type="file" name="file1" required>
            	<button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
            <div class="card myStyle">
            	<label for="assignment">Assignment 2</label>
            	<input type="file" name="file2" required>
            	<button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
             <div class="card myStyle">
            	<label for="assignment">Assignment 3</label>
            	<input type="file" name="file3" required>
            	<button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
             <div class="card myStyle">
            	<label for="assignment">Assignment 4</label>
            	<input type="file" name="file4" required>
            	<button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
        </form>
    </div>
 </div>
<%@include file="Components/footer.jsp" %>
</body>
</html>
