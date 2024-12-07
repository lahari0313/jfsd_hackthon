<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E Learn: Login</title>
<%@include file="Components/css_files.jsp"%>
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
</style>
</head>
<body>
	<%@include file="Components/Navbar.jsp"%>
	<div class="main-container">
		<div class="signin-form">
			<h1>Sign In</h1>
			<c:if test="${not empty succMsg}">
				<p class="text-center text-success">${succMsg }</p>
				<c:remove var="succMsg" scope="session" />
			</c:if>


			<c:if test="${not empty failedMsg}">
				<p class="text-center text-danger">${failedMsg }</p>
				<c:remove var="failedMsg" scope="session" />


			</c:if>
			<form action="login" method="post" onsubmit="return validateForm()">
				<input type="text" id="username" name="username"
					placeholder="Username" required> <input type="password"
					id="password" name="password" placeholder="Password" required>
				<input type="submit" value="Login">
			</form>
		</div>
	</div>
	<%@include file="Components/footer.jsp"%>

	<script>
		function validateForm() {
			var username = document.getElementById('username').value;
			var password = document.getElementById('password').value;

			if (username.trim() === "" || password.trim() === "") {
				alert("Both fields are required.");
				return false; // Prevent form submission
			}
			return true; // Allow form submission
		}
	</script>
</body>
</html>
