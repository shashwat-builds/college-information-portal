<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css"> <!-- External CSS -->
    <style>
        /* Basic inline styling for the About Us page */
        .container {
            background-color: #ffffff; 
            padding: 20px; 
            border-radius: 8px; 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); 
            margin-top: 20px; 
        }
        .content-section {
            margin-top: 20px;
            padding: 15px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .content-section h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 10px;
        }
        .content-section p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
        }
        .media-section {
            height: auto;
            margin-top: 20px;
            padding: 15px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .media-section img{
            max-width:100%;
        }
        
        .media-section iframe {
            width: 100%;
            height: 400px;
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <jsp:include page="header.jsp" />
    <!-- Main content area -->
   <div class="container">
    <!-- Campus Tour Section -->
    <div class="media-section">
      <strong>  <h1>Campus Tour</h1></strong>
        <h2>Explore our beautiful campus:</h2>
        <img src="${pageContext.request.contextPath}/resources/banner1.png" alt="Poornima University Campus">
    </div>

    <!-- Mission Section -->
    <div class="content-section">
        <h2>History of Poornima</h2>
            <p>The Shanti Education Society, pioneering in higher education for more than 20 years, established Poornima University (PU) in 2012, intending to provide quality and multidisciplinary education with the approval of Rajasthan State Legislature Assembly Act No. 16 of 2012 and approved by UGC under sections 2(f) and 12(B) of the UGC Act 1956. The university is a sprawling, lush green campus positioned in Sitapura, an educational and enlightening hub of Jaipur.</p>
            <p>In a brief period, the university has achieved remarkable success. In its early years, Poornima University focused on building a strong foundation in various disciplines. At present, it accommodates over 6,500 students in various areas such as management, engineering, computer application, architecture, design, public health, science, humanities, and hotel management. It offers an integrated, comprehensive system of education extending from the bachelor's to the doctoral level through its semi-residential campus.</p>
            <p>The university's commitment to academic excellence and innovative teaching methodologies quickly gained recognition, attracting students from different parts of India and beyond. Over the years, Poornima University has expanded its academic horizons by introducing new disciplines and courses to cater to the evolving needs of the industry. Collaborations with international universities and industry partnerships were established to provide students with global exposure and enhance their employability.</p>
            <p>The physical infrastructure of Poornima University underwent significant development during its formative years. State-of-the-art facilities, modern classrooms, well-equipped laboratories, an independent academic and administrative block, hostels, sports grounds, and a vibrant campus environment were established to create an ideal setting for learning and personal growth.</p>
            <p>Poornima University has been actively involved in community engagement and social initiatives. Various outreach programs, community service projects, and initiatives aimed at societal development reflect the university's commitment to making a positive impact beyond the campus walls.</p>
        </ul>
    </div>

 



        <!-- Media section (Images/Videos) -->
<div class="media-section">
   <strong> <h2>Take a virtual tour and experience the dynamic atmosphere of Poornima University</h2></strong><hr>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/ZgP4HLQtbTo?si=GS7fE8J3ypXfLYZQ" 
            title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media;
             gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
         
     <br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/8dm3lJgA_FQ?si=wPJV7FK0ghopjiF6" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
     
     <br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/HDP-WX9sk80?si=OzaZuBFv9y6uuM_N" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
     
     
        </div>
    </div>

    
</body>
</html>