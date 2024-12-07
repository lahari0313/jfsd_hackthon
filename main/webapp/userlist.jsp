<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E Learn: User List</title>
<%@ include file="Components/css_files.jsp" %>
<style>
    body {
        background-color: #f0f1f2;
        font-family: 'Roboto', sans-serif;
    }
    .container {
        margin-top: 50px;
    }
    .user-list {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .user-list h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    .user-table {
        width: 100%;
        border-collapse: collapse;
    }
    .user-table th, .user-table td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    .user-table th {
        background-color: #4CAF50;
        color: white;
    }
    .user-table tr:hover {
        background-color: #f1f1f1;
    }
    .user-table td {
        background-color: #fff;
    }
</style>
</head>
<body>
<%@ include file="Components/Navbar.jsp" %>
<div class="container">
    <div class="user-list">
        <h2>Registered Users</h2>
        <table class="user-table">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>${user.role}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@ include file="Components/footer.jsp" %>
</body>
</html>
