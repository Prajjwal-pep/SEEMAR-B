import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class App{
    public static void main(String[] args) {
        Connection conn = null;
        try {
            String userName = "root";
            String password = "Prajjwal@sql";
            String url = "jdbc:mysql://localhost:3306/db";
            
            // Establish the database connection
            conn = DriverManager.getConnection(url, userName, password);
            
            System.out.println("Database connection established successfully");
            
        } catch (SQLException e) {
            System.err.println("Cannot connect to the database");
            e.printStackTrace();
        } finally {
            // Close the connection in the finally block to ensure it's always closed
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.err.println("Error closing the connection");
                    e.printStackTrace();
                }
            }
        }
    }
}
