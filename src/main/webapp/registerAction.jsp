<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="complejodeportivo.DatabaseConnection" %>
<%@ page import="java.util.Enumeration" %>

<%
    // Mostrar todos los parámetros para depuración
    Enumeration paramNames = request.getParameterNames();
    while(paramNames.hasMoreElements()) {
        String paramName = (String) paramNames.nextElement();
        String paramValue = request.getParameter(paramName);
        System.out.println("Parameter Name - " + paramName + ", Value - " + paramValue);
    }
    // Obtener parámetros del formulario
    String rut = request.getParameter("rut_persona");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String direccion = request.getParameter("direccion");
    String comuna = request.getParameter("comuna");
    String region = request.getParameter("region");
    String email = request.getParameter("email");
    String telefono = request.getParameter("telefono");
    String contrasena = request.getParameter("contrasena");

    // Imprimir los valores recibidos para depuración
    System.out.println("Rut: " + rut);
    System.out.println("Nombre: " + nombre);
    System.out.println("Apellido: " + apellido);
    System.out.println("Dirección: " + direccion);
    System.out.println("Comuna: " + comuna);
    System.out.println("Región: " + region);
    System.out.println("Email: " + email);
    System.out.println("Teléfono: " + telefono);
    System.out.println("Contraseña: " + contrasena);

    // Inicializar la respuesta
    String status = "error";
    String message = "";

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Usar la clase DatabaseConnection para obtener la conexión
        conn = DatabaseConnection.getConnection();

        // Verificar si el usuario ya existe
        String checkSql = "SELECT * FROM sistema_usuarios WHERE email = ?";
        stmt = conn.prepareStatement(checkSql);
        stmt.setString(1, email);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            message = "El correo electrónico ya está registrado.";
        } else {
            // Insertar el nuevo usuario
            String insertSql = "INSERT INTO sistema_usuarios (rut_persona, nombre, apellido, direccion, comuna, region, email, telefono, contrasena) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(insertSql);
            stmt.setString(1, rut);
            stmt.setString(2, nombre);
            stmt.setString(3, apellido);
            stmt.setString(4, direccion);
            stmt.setString(5, comuna);
            stmt.setString(6, region);
            stmt.setString(7, email);
            stmt.setString(8, telefono);
            stmt.setString(9, contrasena); // Sin hashear

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                message = "Registro exitoso. Puedes iniciar sesión.";
                status = "success";
            } else {
                message = "Error al registrar el usuario.";
            }
        }
    } catch (SQLException e) {
        message = "Error de conexión a la base de datos: " + e.getMessage();
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
        if (conn != null) try { conn.close(); } catch (SQLException e) {}
    }

    // Devolver la respuesta en formato JSON
    response.setContentType("application/json");
    out.print("{\"status\":\"" + status + "\", \"message\":\"" + message + "\"}");
%>
