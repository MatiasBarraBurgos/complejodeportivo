<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Prueba de Conexión</title>
</head>
<body>
<%
    Connection conn = null;
    try {
        // Cargar el driver de PostgreSQL
        Class.forName("org.postgresql.Driver");
        // Conectar a la base de datos
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/complejo_deportivo", "postgres", "userena");
        out.println("<h2>Conexión exitosa a la base de datos.</h2>");
        
        // Realizar una consulta sencilla
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM sistema_usuarios LIMIT 1");

        if (rs.next()) {
            out.println("<h3>Consulta realizada exitosamente. Usuario encontrado.</h3>");
        } else {
            out.println("<h3>Consulta realizada, pero no se encontraron resultados.</h3>");
        }
    } catch (SQLException e) {
        out.println("<h2>Error de conexión: " + e.getMessage() + "</h2>");
    } catch (ClassNotFoundException e) {
        out.println("<h2>Driver de base de datos no encontrado: " + e.getMessage() + "</h2>");
    } finally {
        if (conn != null) {
            try { conn.close(); } catch (SQLException e) {}
        }
    }
%>
</body>
</html>
