<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Announcements</title>
<%@include file="Components/css_files.jsp" %>
<link rel="icon" type="image/jpeg" href="images/icon.jpg" />
<style>
    body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        margin-top: 50px;
        position: relative;
    }
    .announcement-form {
        background: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
    }
    .announcement-form h2 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 2em;
        color: #2c3e50;
    }
    .announcement-form input, .announcement-form textarea {
        width: calc(100% - 20px);
        margin: 10px 0;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .announcement-form input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
        margin-top: 10px;
        transition: background-color 0.3s;
    }
    .announcement-form input[type="submit"]:hover {
        background-color: #45a049;
    }
    .announcement-list {
        background: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .announcement-item {
        margin-bottom: 20px;
        padding: 10px;
        border-radius: 5px;
        background-color: #f9f9f9;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }
    .announcement-item h3 {
        font-size: 1.5em;
        color: #2c3e50;
    }
    .announcement-item p {
        font-size: 1em;
        color: #333;
    }
    .announcement-item small {
        display: block;
        font-size: 0.9em;
        color: #777;
        margin-top: 10px;
    }
    .bg-image {
        background: url('images/background.jpg') no-repeat center center fixed;
        background-size: cover;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: -1;
    }
    .bg-overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5); /* Dark overlay for readability */
        z-index: -1;
    }
</style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>

<div class="bg-image"></div>
<div class="bg-overlay"></div>

<div class="container">
    <div class="announcement-form">
        <h2>Site Announcements</h2>
        <form id="announcementForm">
            <input type="text" id="title" name="title" placeholder="Title" required>
            <textarea id="content" name="content" rows="5" placeholder="Content" required></textarea>
            <input type="submit" value="Add Announcement">
        </form>
    </div>
    <div class="announcement-list" id="announcementList">
        <h2>Recent Announcements</h2>
        <div class="announcement-item">
            <h3>COMPILER DESIGN 2023-2024 SUMMER TERM(ACC)</h3>
            <p>Teacher: DAYANIDHI MOHAPATRA 7510, Mrs. P RAMADEVI 8059, KUCHIPUDI PRASANTH KUMAR 8070, 
            Mrs. SARIHADDU KAVITHA 8080, B BALAKRISHNA 8154, DASARI VINAY KUMAR 8198, R RAMA KRISHNA 8245, 
            Srilatha Yelamati 8264, AFREEN BASHA 8488, K Venkata Subramanyam 8553, Dr. S. Sri Lakshmi Parvathi 8826, 
            KRISHNA KISHORE THOTA 8853, Antara Munshi 8859.</p>
            <small>Posted on: 2023-07-20</small>
        </div>
        <div class="announcement-item">
            <h3>CSE(H) Certification Courses</h3>
            <p>Teacher: JONNALAGADDA SURYA KIRAN 4654, VENU BABU RACHAPUDI 4750</p>
            <small>Posted on: 2023-07-15</small>
        </div>
        <!-- More announcements can be added here -->
    </div>
</div>
<%@include file="Components/footer.jsp" %>

<script>
    document.getElementById('announcementForm').addEventListener('submit', function(event) {
        event.preventDefault();
        
        const title = document.getElementById('title').value;
        const content = document.getElementById('content').value;

        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'addAnnouncement.jsp', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const response = xhr.responseText;

                const newAnnouncement = document.createElement('div');
                newAnnouncement.className = 'announcement-item';
                newAnnouncement.innerHTML = `
                    <h3>${title}</h3>
                    <p>${content}</p>
                    <small>Posted on: ${new Date().toISOString().split('T')[0]}</small>
                `;

                document.getElementById('announcementList').prepend(newAnnouncement);

                // Clear form fields
                document.getElementById('title').value = '';
                document.getElementById('content').value = '';
            }
        };

        xhr.send(`title=${encodeURIComponent(title)}&content=${encodeURIComponent(content)}`);
    });
</script>
</body>
</html>
