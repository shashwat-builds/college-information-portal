<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css"> <!-- External CSS -->
    <style>
        /* Inline styling for the contact form */
        
        .container {
            background-color: #ffffff; 
            padding: 20px; 
            border-radius: 8px; 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); 
            margin-top: 20px; 
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius:7px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            height:100%;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            height: 150px;
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
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        
          .map-container {
          
          display: flex;
          border-radius:8px;
         justify-content:center;
         align-items:center;
         box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
         height:100%;
            
        }
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <jsp:include page="header.jsp" />

    <!-- Main container with contact form -->
    <div class="container">
    <div class="row">
    <div class="col">
        <form action="ContactServlet" method="POST">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            
            

            <label for="message">Message</label>
            <textarea id="message" name="message" required></textarea>

            <input type="submit" value="Submit">

            <!-- Success message -->
            <c:if test="${not empty successMessage}">
                <p class="success">${successMessage}</p>
            </c:if>
        </form>
        </div>
        <div class="col">
        
        <!-- Embedded Google Map -->
        <div class="map-container" >
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3561.894829584606!2d75.87444327420666!3d26.779622176726754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396dc9d5c3d68749%3A0xa227c3f0db21d4fc!2sPoornima%20University!5e0!3m2!1sen!2sin!4v1729844816285!5m2!1sen!2sin" width="800" height="600" 
           style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
    </div>
    </div>


 
   
</body>
</html>