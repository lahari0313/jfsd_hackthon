<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E Learn: Faculty List</title>
<%@include file="Components/css_files.jsp" %>
<link rel="icon" type="image/jpeg" href="images/icon.jpg" />
<style>
    body {
        background-color: #f0f1f2;
        font-family: 'Roboto', sans-serif;
    }
    .container {
        margin-top: 50px;
    }
    .faculty-list {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .faculty-list h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    .faculty-table {
        width: 100%;
        border-collapse: collapse;
    }
    .faculty-table th, .faculty-table td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    .faculty-table th {
        background-color: #4CAF50;
        color: white;
    }
    .faculty-table tr:hover {
        background-color: #f1f1f1;
    }
    .faculty-table td {
        background-color: #fff;
    }
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>
<div class="container">
    <div class="faculty-list">
        <h2>Faculty List</h2>
        <table class="faculty-table">
            <thead>
                <tr>
                    <th>Employee ID</th>
                    <th>Full Name</th>
                    <th>Payroll</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="faculty" items="${facultyList}">
                    <tr>
                        <td>${faculty.empid}</td>
                        <td>${faculty.fullname}</td>
                        <td>${faculty.payroll}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@include file="Components/footer.jsp" %>
</body>
</html>
