<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>College Information Portal</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css"> <!-- External CSS -->
    <style>
        /* Inline basic styling for quick demo purposes */
        
        
        
        .container {
            background-color: #ffffff; 
            padding: 20px; 
            border-radius: 8px; 
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); 
            margin-top: 20px; 
            width: 80%;
            margin: 0 auto;
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #0056b3; 
            font-size: 28px; 
            margin-bottom: 15px; 
        }

        h3 {
            color: #333; 
            font-size: 24px; 
            margin-top: 20px; 
            margin-bottom: 10px; 
        }

        p {
            line-height: 1.6; 
            margin-bottom: 15px; 
            color: #555; 
        }

        ul {
            list-style-type: disc; 
            margin-left: 20px; 
            margin-bottom: 15px; 
        }

        ul li {
            margin-bottom: 10px; 
            color: #444; 
        }

        a {
            color: #007BFF; 
            text-decoration: none; 
        }

        

        a:hover {
            text-decoration: underline; 
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 15px; /* Reduced padding on smaller screens */
            }

            h2 {
                font-size: 24px; /* Smaller font size for headings */
            }

            h3 {
                font-size: 22px; /* Smaller font size for subheadings */
            }
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

    <!-- Header with logo and college name -->


    <!-- Navigation bar -->
    <jsp:include page="header.jsp" /><br>
    <!-- Main content area -->
    <div class="container">

        <div class="content-section">
            <h2>Welcome to Poornima University</h2>
            <p>Poornima University (PU), an esteemed state-private university in Jaipur, India, was established in 2012. Our 32-acre campus blends classical architecture and a thoughtful layout, offering an ideal learning environment. Located in Jaipur's prime area, PU accommodates over 6,500 students in diverse programs, fostering innovation-driven research and strong industry ties. With three decades in higher education, PU stands out for its commitment to academic excellence and innovation, inviting students to join a legacy of success.</p>
        </div>

        <div class="content-section">
            <h2>Course Offerings</h2>
            <ul>
                <li><strong>Bachelor of Technology (B.Tech)</strong>:
                    <ul>
                        <li>Specializations in Computer Science, Electronics, Mechanical, Civil, and Information Technology.</li>
                        <li>Focus on in-depth knowledge and hands-on experience.</li>
                    </ul>
                </li>
                <li><strong>Master of Business Administration (MBA)</strong>:
                    <ul>
                        <li>Coverage of critical areas like Marketing, Finance, Operations, and Human Resources.</li>
                        <li>Aims to develop strategic thinkers and leaders.</li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="content-section">
            <h2>Impeccable Placement Record</h2>
            <ul>
            
                <li><strong>100% Placement Rate</strong>:
                    <ul>
                        <li>Poornima University's Training and Placement (T&P) Cell is a crucial link connecting academia with the industry. Our T&P Cell focuses on nurturing industry-ready professionals across various disciplines such as engineering, management, humanities, information technology, hotel management, design, commerce, and science. It plays a vital role in fostering holistic student development and ensures that our students are well-prepared for the corporate world.</li>
                        <li>Our state-of-the-art infrastructure supports every aspect of the placement process, ensuring a seamless experience for both students and recruiters. Committed to achieving a flawless 100% placement record, our Training and Placement Team meticulously designs an annual recruitment schedule, collaborating with HR teams from diverse sectors for effective campus recruitment drives. Our success is reflected in the remarkable increase in placement packages over the years.</li>
                    </ul>
                </li>
                <li><strong>Notable Packages</strong>:
                    <ul>
                        <li><strong>Highest Packages (2020-21): </strong>: ₹15 LPA</li>
                        <li><strong>Highest Packages (2021-22): </strong>: ₹33 LPA</li>
                        <li><strong>Highest Packages (2022-23): </strong>: ₹45 LPA</li>
                        <li><strong>Highest Packages (2022-23): </strong>: ₹45 LPA</li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="content-section">
            <h2>State-of-the-Art Infrastructure</h2>
            <ul>
                <li><strong>Academic Area</strong>: Poornima University offers an extensive array of amenities specifically tailored to cater to the varied requirements of its students. The campus is outfitted with state-of-the-art classrooms that have projectors and computers, creating a setting that is favorable to current learning methods. The university consistently organizes National and International Conferences and Seminars as part of its dedication to industry interaction. These events encompass a wide range of subjects and disciplines.</li>
                <li><strong>Class Rooms</strong>: Poornima University features cutting-edge ICT-enabled classrooms that are equipped with Wi-Fi access, LAN, and projectors, creating a vibrant and proactive learning environment for students. The university places a high importance on continuously using Information and Communication Technology (ICT) to enhance the teaching and learning process. This dedication is seen in the extensive integration of ICT technologies that harmoniously correspond with educational goals.</li>
                <li><strong>Theatre & Seminar Rooms</strong>: Poornima University's theatre and seminar rooms are carefully organized to facilitate regular interactions, guest lectures, presentations, conferences, cultural events, and numerous academic activities. The facility boasts several lecture rooms that are outfitted with state-of-the-art audiovisual technology, providing an ideal setting for educational activities. These facilities guarantee extensive audio-visual assistance, improving the educational experience for both faculty and students.</li>
                <li><strong>E-learning rooms (Swayam/MOOCs)</strong>: Poornima University has created the E-Learning Rooms to facilitate students in their academic pursuits. Our objective is to encourage and broaden the utilization of E-Learning within the University in order to enhance the student experience. We endeavor to guarantee that our facilities can embody the exceptional quality of teaching, learning, and research that is anticipated from a top-tier school. In order to fulfill this requirement, the university has decided to implement cutting-edge technological advancements, allowing the university community to fully utilize their academic capabilities and foster a culture of lifelong learning.</li>

            </ul>
        </div>

        <div class="content-section">
            <h2>Vision</h2>
            <p>Our vision is to create a knowledge-based society with a scientific temper, team spirit, and dignity of labor to face global competitive challenges.</p>
        </div>

        <div class="content-section">
            <h2>Mission</h2>
            <p>Our mission is to evolve and develop skill-based systems for effective delivery of knowledge so as to equip young professionals with dedication and commitment to excellence in all spheres of life.</p>
        </div>

    </div>

</body>
</html>
