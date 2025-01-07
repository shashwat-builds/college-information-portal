import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {

        // Retrieve form parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Database connection setup
        String jdbcURL = "jdbc:mysql://localhost:3306/college_portal";
        String dbUser = "root";
        String dbPassword = "admin";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Prepare SQL statement for authentication
            String sql = "SELECT * FROM students WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            // Execute the query
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // If login is successful, create a session
                HttpSession session = request.getSession();
                session.setAttribute("studentName", resultSet.getString("name"));
                session.setAttribute("studentEmail", email);

                // Redirect to dashboard
                response.sendRedirect("files");
            } else {
                // If login fails, set an error message and forward to the login page
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            // Close connection
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle database connection errors
            request.setAttribute("errorMessage", "An error occurred. Please try again later.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}