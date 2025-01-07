<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css"> <!-- External CSS -->
    <style>
        /* Inline styling for the login form */
        .container {
            padding: 20px;
            width: 50%;
            margin: 0 auto;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #333;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Header -->

    <!-- Navigation bar -->
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
                <a class="nav-link" href="register.jsp">Student Registration</a>
              </li>
        	<li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
            </ul>
          </div>
        </div>
      </nav><br>
      </header>>
    <!-- Main container with login form -->
    <div class="container">
        <form action="LoginServlet" method="POST">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login">

            <!-- Error message -->
            <c:if test="${not empty errorMessage}">
                <p class="error">${errorMessage}</p>
            </c:if>
        </form>
    </div>

  
</body>
</html>