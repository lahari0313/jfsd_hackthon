<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course: CD</title>
    <%@include file="Components/css_files.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Include Chart.js -->
    <style>
        body {
            background-color: #fcf7f7;
            font-family: 'Roboto', sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        .assignment-upload, .assignment-evaluation, .tracking-project {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }
        .assignment-upload h2, .assignment-evaluation h2, .tracking-project h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .assignment-upload input[type="file"], 
        .assignment-upload input[type="text"],
        .assignment-upload textarea {
            width: calc(100% - 20px);
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .assignment-upload input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }
        .assignment-upload input[type="submit"]:hover {
            background-color: #45a049;
        }
        .milestone-list {
            list-style-type: none;
            padding: 0;
        }
        .milestone-list li {
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .myStyle {
            padding: 20px;
            margin-bottom: 10px;
        }
        .cw-100 {
            width: 100px; 
        }
        #milestoneChart {
            width: 100%;
            height: 400px; /* Set height for the chart */
        }
    </style>
</head>
<body>
<%@include file="Components/Navbar.jsp" %>
<div class="container">
    <div class="assignment-upload">
        <h2>Upload Project</h2>
        <form action="uploadAssignment.jsp" method="post" enctype="multipart/form-data">
            <div class="card myStyle">
                <label for="projectName">Project Name</label>
                <input type="text" name="projectName" required>
            </div>
            <div class="card myStyle">
                <label for="projectDetails">Project Details</label>
                <textarea name="projectDetails" rows="4" required></textarea>
            </div>
            <div class="card myStyle">
                <label for="milestones">Milestones (comma-separated)</label>
                <input type="text" name="milestones" placeholder="e.g. Milestone 1, Milestone 2" required>
            </div>
            <div class="card myStyle">
                <label for="file1">Project File</label>
                <input type="file" name="file1" required>
                <button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
            <div class="card myStyle">
                <label for="file2">Documentation</label>
                <input type="file" name="file2" required>
                <button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
            <div class="card myStyle">
                <label for="file3">Prototype</label>
                <input type="file" name="file3" required>
                <button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
            <div class="card myStyle">
                <label for="file4">Analysis</label>
                <input type="file" name="file4" required>
                <button class="btn btn-success btn-sm cw-100" type="submit">Upload</button>
            </div>
        </form>
    </div>

    <!-- New Tracking Project Section -->
    <div class="tracking-project">
        <h2>Tracking Project</h2>
        <ul class="milestone-list">
            <li><strong>Milestone 1:</strong> Initial Research Completed</li>
            <li><strong>Milestone 2:</strong> Prototype Developed</li>
            <li><strong>Milestone 3:</strong> User Testing Conducted</li>
        </ul>
    </div>

    <!-- Milestone Graph Section -->
    <div class="tracking-project">
        <h2>Milestone Progress</h2>
        <canvas id="milestoneChart"></canvas>
    </div>
</div>

<script>
    // Sample data for the milestones
    const milestones = {
        labels: ['Milestone 1', 'Milestone 2', 'Milestone 3'], // Labels for the X-axis
        datasets: [{
            label: 'Milestone Completion',
            data: [1, 1, 1], // Sample data representing completion (1 for completed, 0 for not completed)
            backgroundColor: 'rgba(75, 192, 192, 0.6)',
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 1
        }]
    };

    const config = {
        type: 'bar', // Type of the chart
        data: milestones,
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Completion Status'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Milestones'
                    }
                }
            }
        }
    };

    // Render the chart
    const milestoneChart = new Chart(
        document.getElementById('milestoneChart'),
        config
    );
</script>
<%@include file="Components/footer.jsp" %>
</body>
</html>
