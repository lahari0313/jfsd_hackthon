<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E Learn: Register</title>
<%@include file="Components/css_files.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Components/Navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration page</h4>
						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>


						<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />


						</c:if>

						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter UserId</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="userid">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="username">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password">
							</div>
							 <div class="form-group">
                                <label for="role">Role</label>
                                <select class="form-control" id="role" name="role" required>
                                    <option value="Admin">Admin</option>
                                    <option value="User">User</option>
                                    <option value="Faculty">Faculty</option>
                                </select>
                            </div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree terms and conditions</label>
							</div>
							<div class="d-flex justify-content-center">
								<button type="submit" class="btn btn-primary"
									style="background-color: black; border-color: black;">Submit</button>
							</div>

						</form>

					</div>


				</div>

			</div>

		</div>

	</div>
	<%@include file="Components/footer.jsp"%>
</body>
</html>