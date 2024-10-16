package complejodeportivo;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener la sesión actual
        HttpSession session = request.getSession(false); // false para no crear una nueva sesión
        if (session != null) {
            session.invalidate(); // Invalidar la sesión
        }
        // Redirigir al usuario a la página de inicio
        response.sendRedirect("index.jsp");
    }
}
