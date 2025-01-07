import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/StudentRegistrationServlet")
public class StudentRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        // Get the form data from the request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String course = request.getParameter("course");

        // Database connection setup
        String jdbcURL = "jdbc:mysql://localhost:3306/college_portal";
        String dbUser = "root";
        String dbPassword = "admin";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Prepare SQL statement
            String sql = "INSERT INTO students (name, email, password, course) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, password);
            statement.setString(4, course);

            // Execute the SQL statement
            int rows = statement.executeUpdate();

            if (rows > 0) {
                // Redirect to success page or confirmation
                response.sendRedirect("login.jsp");
            }

            // Close the connection
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to error page
            response.sendRedirect("registration_error.jsp");
        }
    }
}