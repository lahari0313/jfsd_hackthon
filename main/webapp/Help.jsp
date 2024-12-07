<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help Module</title>
<%@include file="Components/css_files.jsp" %>
<link rel="icon" type="image/jpeg" href="images/icon.jpg" />
<style>
    body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
        background: url('images/background.jpg') no-repeat center center fixed;
        background-size: cover;
    }
    .container {
        margin-top: 50px;
        position: relative;
        z-index: 1;
    }
    .help-form {
        background: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
        position: relative;
        z-index: 2;
    }
    .help-form h2 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 2em;
        color: #2c3e50;
    }
    .help-form label {
        font-size: 1.2em;
        font-weight: bold;
        color: #2c3e50;
    }
    .help-form input, .help-form textarea, .help-form select {
        width: calc(100% - 20px);
        margin: 10px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .help-form input[type="submit"] {
        background-color: #000;
        color: white;
        border: none;
        cursor: pointer;
        margin-top: 10px;
        transition: background-color 0.3s;
    }
    .help-form input[type="submit"]:hover {
        background-color: #333;
    }
    .help-form .tooltip {
        position: relative;
        display: inline-block;
    }
    .help-form .tooltip .tooltiptext {
        visibility: hidden;
        width: 120px;
        background-color: #555;
        color: #fff;
        text-align: center;
        border-radius: 5px;
        padding: 5px;
        position: absolute;
        z-index: 3;
        bottom: 125%; 
        left: 50%; 
        margin-left: -60px;
        opacity: 0;
        transition: opacity 0.3s;
    }
    .help-form .tooltip:hover .tooltiptext {
        visibility: visible;
        opacity: 1;
    }
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>
<div class="container">
    <div class="help-form">
        <h2>Re-evaluation</h2>
        <form action="submitTicket.jsp" method="post" enctype="multipart/form-data">
            <label for="issueTitle">course name:</label>
            <div class="tooltip">
                <input type="text" id="issueTitle" name="issueTitle" placeholder="Enter the issue title" required>
                <span class="tooltiptext">Provide a brief title</span>
            </div>
            
            <label for="issueDescription">Project Name:</label>
            <textarea id="issueDescription" name="issueDescription" rows="5" placeholder="Describe the issue" required></textarea>
            
            <label for="priority">Priority:</label>
            <select id="priority" name="priority" required>
                <option value="">Select Priority</option>
                <option value="Low">Low</option>
                <option value="Medium">Medium</option>
                <option value="High">High</option>
            </select>
            
            <label for="category">Category:</label>
            <select id="category" name="category" required>
                <option value="">Select Category</option>
                <option value="Technical">Technical</option>
                <option value="Billing">Billing</option>
                <option value="General">General</option>
            </select>
            
            <label for="attachment">Attachment:</label>
            <input type="file" id="attachment" name="attachment">
            
            <input type="submit" value="Submit">
        </form>
    </div>
</div>
<%@include file="Components/footer.jsp" %>

<script>
    document.querySelector('form').addEventListener('submit', function(event) {
        event.preventDefault();
        let confirmation = confirm('Are you sure you want to submit this ticket?');
        if (confirmation) {
            this.submit();
        }
    });
</script>
</body>
</html>
