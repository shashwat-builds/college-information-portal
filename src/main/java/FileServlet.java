import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/files")
public class FileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("FileServlet initialized");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("download".equals(action)) {
            downloadFile(request, response);
        } else {
            listFiles(request, response);
        }
    }

    private void listFiles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> filePaths = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_portal", "root", "admin")) {
            System.out.println("Database connection established");
            PreparedStatement ps = conn.prepareStatement("SELECT file_path FROM notes WHERE subject_id = ?");
            ps.setInt(1, 1); // Assuming subject_id 1 for Java
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                filePaths.add(rs.getString("file_path"));
            }
            System.out.println("File paths retrieved: " + filePaths);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("filePaths", filePaths);
        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }

    private void downloadFile(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String filePath = request.getParameter("filePath");
        File file = new File(filePath);
        if (file.exists()) {
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Disposition", "attachment;filename=" + file.getName());
            try (FileInputStream inStream = new FileInputStream(file);
                 OutputStream outStream = response.getOutputStream()) {
                byte[] buffer = new byte[4096];
                int bytesRead;
                while ((bytesRead = inStream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, bytesRead);
                }
            }
        } else {
            response.getWriter().print("File not found!");
        }
    }
}
