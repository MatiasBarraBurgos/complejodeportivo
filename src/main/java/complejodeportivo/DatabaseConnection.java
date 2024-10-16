package complejodeportivo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:postgresql://localhost:5432/complejo_deportivo"; // Cambia esto a tu URL
    private static final String USER = "postgres"; // Cambia esto a tu usuario
    private static final String PASSWORD = "userena"; // Cambia esto a tu contraseña

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver"); // Cargar el driver de PostgreSQL
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver PostgreSQL no encontrado", e);
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
