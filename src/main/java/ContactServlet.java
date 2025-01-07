import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC connection variables
    private String jdbcURL = "jdbc:mysql://localhost:3306/college_portal"; // Replace with your database URL
    private String jdbcUsername = "root"; // Replace with your DB username
    private String jdbcPassword = "admin"; // Replace with your DB password

    // SQL query to insert contact form data into contact_messages table
    private static final String INSERT_MESSAGE_SQL = 
        "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the form data from the JSP
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Check if all form fields are filled out (basic validation)
        if (name == null || email == null || message == null || name.isEmpty() || email.isEmpty() || message.isEmpty()) {
            // If validation fails, return to the contact page with an error message
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
        } else {
            // If validation passes, save the message to the database
            try {
                // Establish JDBC connection
                Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure you have the MySQL JDBC driver
                Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

                // Prepare the SQL statement to insert the contact form data
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_MESSAGE_SQL);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, message);

                // Execute the update (insert the data)
                int result = preparedStatement.executeUpdate();

                // Close the connection
                preparedStatement.close();
                connection.close();

                // Check if the data was successfully inserted
                if (result > 0) {
                    // Set a success message and forward it back to the contact.jsp page
                    request.setAttribute("successMessage", "Thank you for contacting us! We will get back to you soon.");
                    request.getRequestDispatcher("contact.jsp").forward(request, response);
                } else {
                    // Set an error message in case something went wrong
                    request.setAttribute("errorMessage", "Unable to process your request at the moment.");
                    request.getRequestDispatcher("contact.jsp").forward(request, response);
                }

            } catch (Exception e) {
                // Handle any errors (e.g., database connection issues)
                e.printStackTrace();
                request.setAttribute("errorMessage", "There was an error processing your request. Please try again later.");
                request.getRequestDispatcher("contact.jsp").forward(request, response);
            }
        }
    }
}
