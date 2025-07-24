package DbCon;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static Connection conn;
	
	public static Connection getConn() {
		
		try {
			
			//loading the driver class 
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//create a connection
			conn = DriverManager.getConnection(
				    "jdbc:mysql://localhost:3306/quiz_app",  // Reemplaza 'quiz_app' con el nombre de tu base de datos
				    "root",  // Usuario 'root'
				    "root"   // Contraseña 'root'
				);
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return conn;
	}
}

