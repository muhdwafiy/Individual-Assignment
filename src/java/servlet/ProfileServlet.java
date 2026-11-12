package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ProfileServlet receives the profile form data (HTTP POST)
 * and forwards it to profile.jsp for display.
 *
 * @author wafiy
 */
@WebServlet(name = "ProfileServlet", urlPatterns = {"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

    /**
     * Handles form submission (HTTP POST).
     *
     * @author wafiy
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Make sure special characters are read correctly
        request.setCharacterEncoding("UTF-8");

        // Read values from the form (names must match the HTML form)
        String name      = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String programme = request.getParameter("programme");
        String email     = request.getParameter("email");
        String hobbies   = request.getParameter("hobbies");
        String intro     = request.getParameter("intro");

        // Store values in the request so the JSP can use them
        request.setAttribute("name", escape(name));
        request.setAttribute("studentId", escape(studentId));
        request.setAttribute("programme", escape(programme));
        request.setAttribute("email", escape(email));
        request.setAttribute("hobbies", escape(hobbies));
        request.setAttribute("intro", escape(intro));

        // Pass control to the JSP page
        RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
        rd.forward(request, response);
    }

    // If someone opens the servlet URL directly, send them back to the form
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.html");
    }

    /**
     * Simple safety: stops users typing HTML/script into the form.
     *
     * @author wafiy
     */
    private String escape(String text) {
        if (text == null) {
            return "";
        }
        return text.replace("&", "&amp;")
                   .replace("<", "&lt;")
                   .replace(">", "&gt;")
                   .replace("\"", "&quot;");
    }
}