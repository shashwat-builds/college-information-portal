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
               <%
            // Use the session variable declared above
            if (session != null && session.getAttribute("studentEmail") != null) {
        %>
              <li class="nav-item">
                <a class="nav-link" href="files">Dashboard</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="LogoutServlet">Logout</a>
              </li>
               <%
            } else {
        %>
        	  <li class="nav-item">
                <a class="nav-link" href="register.jsp">Student Registration</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
              </li>
              <%
            }
        %>
        	<li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
   