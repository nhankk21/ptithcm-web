package app.context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBContext {
	private final String serverName = "HOAINHAN-PC";
	private final String dbName = "WEB";
	private final String userID = "webadmin";
	private final String password = "1234";
	public Connection getConnection() throws Exception{
		Connection connection = null;
		
		String url = "jdbc:sqlserver://" +serverName + ":1433;DatabaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        connection =  DriverManager.getConnection(url, userID, password);
        return connection;
	}
	
}
