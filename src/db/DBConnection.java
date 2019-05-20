package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static final String DRIVER_CLASS = "org.mariadb.jdbc.Driver";
	private static final String DB_URL = "jdbc:mariadb://localhost:3306/resale";
	private static final String DB_USER = "root";
	private static final String DB_PASS = "root";

	public static Connection getConnection() {

		Connection connection = null;

		try {
			Class.forName(DRIVER_CLASS);
			connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return connection;

	}

}
