<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css"> <!-- External CSS -->
    <style>
        /* Inline styling for the dashboard */
       
        h2 {
            color: #333;
        }
        .download-link {
            display: inline-block;
            margin-top: 10px;
            padding: 10px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .download-link:hover {
            background-color: #555;
        }
        
    </style>
</head>
<body>

    <!-- Header -->
<header>
        <img src="${pageContext.request.contextPath}/resources/pulogo.png" alt="Logo">
        <img class="vertical" src="${pageContext.request.contextPath}/resources/rrlogo.png" alt="Logo">
        <h1>Poornima University</h1>   
    <nav class="navbar navbar-expand-lg bg-body-tertiary bg-opacity-25 head">
        <div class="container-fluid">
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="LogoutServlet">Logout</a>
              </li>
        	<li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
            </ul>
          </div>
        </div>
      </nav><br>
      </header>
    <!-- Main container with welcome message and subjects list -->
    <div class="container">
    <div class="content-section">
        <!-- Welcome message -->
        <h2>Hello, <%= session.getAttribute("studentName") %>!   Welcome to your Dashboard.<br><br>
        <!-- List of subjects and download links -->
        <ul>
        <%
            List<String> filePaths = (List<String>) request.getAttribute("filePaths");
            System.out.println("File paths in JSP: " + filePaths); // Add this line for debugging
            if (filePaths == null || filePaths.isEmpty()) {
                out.println("<li>No files found.</li>");
            } else {
                for (String filePath : filePaths) {
                    File file = new File(filePath);
                    String subjectName = "Java"; // Since subject_id 1 corresponds to Java
        %>
        <li>
            <form action="files" method="get">
                <input type="hidden" name="action" value="download">
                <input type="hidden" name="filePath" value="<%= filePath %>">
                <button type="submit" class="download-link"><%= subjectName %> - <%= file.getName() %></button>
            </form>
        </li>
        <%
                }
            }
        %>
        </ul>
        </div>
    </div>

    
</body>
</html>