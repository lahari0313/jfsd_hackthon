<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Portfolio</title>
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
        .portfolio {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .portfolio h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2em;
            color: #2c3e50;
        }
        .section {
            margin-bottom: 30px;
        }
        .section h3 {
            font-size: 1.8em;
            color: #2c3e50;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 10px;
        }
        .section p {
            font-size: 1.1em;
            color: #333;
            line-height: 1.6;
        }
        .section ul {
            list-style: none;
            padding: 0;
        }
        .section ul li {
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .section ul li strong {
            font-weight: bold;
            color: #2c3e50;
        }
        .edit-btn, .save-btn {
            margin-top: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
        }
        .edit-btn:hover, .save-btn:hover {
            background-color: #45a049;
        }
        .edit-form {
            display: none;
            margin-top: 20px;
        }
        .edit-form input, .edit-form textarea {
            width: calc(100% - 20px);
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
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
            background: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }
        .photo-section img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }
    </style>
    <script>
        function editSection(sectionId) {
            // Hide all edit forms
            const allEditForms = document.querySelectorAll('.edit-form');
            allEditForms.forEach(form => form.style.display = 'none');

            // Show the specific edit form
            const formToEdit = document.getElementById(sectionId + 'Form');
            formToEdit.style.display = 'block';

            // Hide the display content
            const sectionDisplay = document.getElementById(sectionId);
            sectionDisplay.querySelector('p, ul').style.display = 'none';
        }

        function saveSection(sectionId) {
            const sectionDisplay = document.getElementById(sectionId);
            const formToEdit = document.getElementById(sectionId + 'Form');

            // Get the input values from the edit form
            if (sectionId === 'aboutSection') {
                const aboutInput = document.getElementById('aboutInput').value;
                document.getElementById('aboutDisplay').innerText = aboutInput;
            } else if (sectionId === 'personalInfoSection') {
                const nameInput = document.getElementById('nameInput').value;
                const emailInput = document.getElementById('emailInput').value;
                const phoneInput = document.getElementById('phoneInput').value;
                const addressInput = document.getElementById('addressInput').value;
                
                document.getElementById('nameDisplay').innerText = nameInput;
                document.getElementById('emailDisplay').innerText = emailInput;
                document.getElementById('phoneDisplay').innerText = phoneInput;
                document.getElementById('addressDisplay').innerText = addressInput;
            } else if (sectionId === 'academicDetailsSection') {
                const programInput = document.getElementById('programInput').value;
                const universityInput = document.getElementById('universityInput').value;
                const gradYearInput = document.getElementById('gradYearInput').value;
                const cgpaInput = document.getElementById('cgpaInput').value;
                
                document.getElementById('programDisplay').innerText = programInput;
                document.getElementById('universityDisplay').innerText = universityInput;
                document.getElementById('gradYearDisplay').innerText = gradYearInput;
                document.getElementById('cgpaDisplay').innerText = cgpaInput;
            } else if (sectionId === 'skillsSection') {
                const skillsInput = document.getElementById('skillsInput').value;
                document.getElementById('skillsList').innerHTML = skillsInput.split(',').map(skill => `<li>${skill.trim()}</li>`).join('');
            } else if (sectionId === 'projectsSection') {
                const projectsInput = document.getElementById('projectsInput').value;
                document.getElementById('projectsSection').querySelector('ul').innerHTML = projectsInput.split('\n').map(project => `<li>${project.trim()}</li>`).join('');
            }

            // Hide the edit form and show the updated content
            formToEdit.style.display = 'none';
            sectionDisplay.querySelector('p, ul').style.display = 'block';
        }
    </script>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>

<div class="bg-image"></div>
<div class="bg-overlay"></div>

<div class="container">
    <div class="portfolio">
        <h2>Student Portfolio</h2>

        <!-- Photo Section -->
        <div class="section photo-section">
            <h3>Photo</h3>
            <img src="images/profile.jpeg" alt="Profile Photo" id="profilePhoto">
        </div>

        <!-- About Section -->
        <div class="section" id="aboutSection">
            <h3>About</h3>
            <p id="aboutDisplay">Hello, I'm John Doe, a passionate Computer Science student...</p>
            <button class="edit-btn" onclick="editSection('aboutSection')">Edit</button>

            <div class="edit-form" id="aboutForm">
                <textarea id="aboutInput" rows="5">Hello, I'm John Doe, a passionate Computer Science student...</textarea>
                <button class="save-btn" onclick="saveSection('aboutSection')">Save</button>
            </div>
        </div>

        <!-- Personal Information Section -->
        <div class="section" id="personalInfoSection">
            <h3>Personal Information</h3>
            <p><strong>Name:</strong> <span id="nameDisplay">John Doe</span></p>
            <p><strong>Email:</strong> <span id="emailDisplay">john.doe@example.com</span></p>
            <p><strong>Phone:</strong> <span id="phoneDisplay">+1 123 456 7890</span></p>
            <p><strong>Address:</strong> <span id="addressDisplay">123 Main Street, City, Country</span></p>
            <button class="edit-btn" onclick="editSection('personalInfoSection')">Edit</button>

            <div class="edit-form" id="personalInfoForm">
                <input type="text" id="nameInput" value="John Doe">
                <input type="email" id="emailInput" value="john.doe@example.com">
                <input type="text" id="phoneInput" value="+1 123 456 7890">
                <input type="text" id="addressInput" value="123 Main Street, City, Country">
                <button class="save-btn" onclick="saveSection('personalInfoSection')">Save</button>
            </div>
        </div>

        <!-- Academic Details Section -->
        <div class="section" id="academicDetailsSection">
            <h3>Academic Details</h3>
            <ul>
                <li><strong>Program:</strong> <span id="programDisplay">Bachelor of Technology in Computer Science</span></li>
                <li><strong>University:</strong> <span id="universityDisplay">XYZ University</span></li>
                <li><strong>Graduation Year:</strong> <span id="gradYearDisplay">2025</span></li>
                <li><strong>CGPA:</strong> <span id="cgpaDisplay">8.5/10</span></li>
            </ul>
            <button class="edit-btn" onclick="editSection('academicDetailsSection')">Edit</button>

            <div class="edit-form" id="academicDetailsForm">
                <input type="text" id="programInput" value="Bachelor of Technology in Computer Science">
                <input type="text" id="universityInput" value="XYZ University">
                <input type="text" id="gradYearInput" value="2025">
                <input type="text" id="cgpaInput" value="8.5/10">
                <button class="save-btn" onclick="saveSection('academicDetailsSection')">Save</button>
            </div>
        </div>

        <!-- Skills Section -->
        <div class="section" id="skillsSection">
            <h3>Skills</h3>
            <ul id="skillsList">
                <li><strong>Programming Languages:</strong> Java, Python, JavaScript, C++</li>
                <li><strong>Web Development:</strong> HTML, CSS, JavaScript, JSP, React.js</li>
                <li><strong>Database Management:</strong> MySQL, MongoDB</li>
                <li><strong>Frameworks:</strong> Spring Boot, Flask</li>
                <li><strong>Tools:</strong> Git, Maven, Docker</li>
            </ul>
            <button class="edit-btn" onclick="editSection('skillsSection')">Edit</button>

            <div class="edit-form" id="skillsForm">
                <textarea id="skillsInput" rows="6">Java, Python, JavaScript, C++, HTML, CSS, JavaScript, JSP, React.js, MySQL, MongoDB, Spring Boot, Flask, Git, Maven, Docker</textarea>
                <button class="save-btn" onclick="saveSection('skillsSection')">Save</button>
            </div>
        </div>

        <!-- Projects Section -->
        <div class="section" id="projectsSection">
            <h3>Projects</h3>
            <ul>
                <li><strong>Project 1:</strong> Online Book Store - Developed using Java and MySQL</li>
                <li><strong>Project 2:</strong> Portfolio Website - Built with HTML, CSS, JavaScript</li>
            </ul>
            <button class="edit-btn" onclick="editSection('projectsSection')">Edit</button>

            <div class="edit-form" id="projectsForm">
                <textarea id="projectsInput" rows="6">Project 1: Online Book Store - Developed using Java and MySQL.
Project 2: Portfolio Website - Built with HTML, CSS, JavaScript.</textarea>
                <button class="save-btn" onclick="saveSection('projectsSection')">Save</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
