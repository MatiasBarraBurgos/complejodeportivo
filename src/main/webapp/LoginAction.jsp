<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="complejodeportivo.DatabaseConnection" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse" %>

<%
    String email = request.getParameter("email"); // Correo electrónico
    String contrasena = request.getParameter("contrasena");

    // Lógica para verificar el usuario y contraseña en la base de datos
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // Conexión a la base de datos
        conn = DatabaseConnection.getConnection();
        System.out.println("Conexión a la base de datos establecida.");

        String sql = "SELECT * FROM sistema_usuarios WHERE email = ? AND contrasena = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, email); // Usando el correo electrónico
        stmt.setString(2, contrasena); // Comparando directamente la contraseña sin hashear

        rs = stmt.executeQuery();
        System.out.println("Consulta ejecutada. Comprobando resultados...");

        if (rs.next()) {
            // Autenticación exitosa
            String username = rs.getString("nombre"); // Cambia "nombre" al campo correcto que contiene el nombre del usuario
            session.setAttribute("username", username); // Almacena el nombre en la sesión
            session.removeAttribute("errorMessage"); // Limpiar mensaje de error si la autenticación es exitosa
            System.out.println("Autenticación exitosa para el usuario: " + username);
            response.sendRedirect("index.jsp"); // Redirige a la página principal
        } else {
            // Redirigir con un mensaje de error
            session.setAttribute("errorMessage", "Credenciales inválidas. Por favor, inténtalo de nuevo.");
            System.out.println("Credenciales inválidas para el usuario: " + email);
            response.sendRedirect("login.jsp"); // Redirige de vuelta al login
        }  
    } catch (SQLException e) {
        e.printStackTrace();
        // Redirigir a la página de error en caso de excepción
        session.setAttribute("errorMessage", "Ocurrió un error al procesar la solicitud.");
        System.out.println("Error en la base de datos: " + e.getMessage());
        response.sendRedirect("login.jsp");
    } finally {
        // Cierre de recursos
        if (rs != null) try { rs.close(); } catch (SQLException e) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
        if (conn != null) try { conn.close(); } catch (SQLException e) {}
    }
%>
