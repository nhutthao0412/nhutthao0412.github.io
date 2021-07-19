package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectToDatabase {
	static Connection con;

	public ConnectToDatabase() {

	}

	public static Connection getConnect() {
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=shoppingweb;user=sa;password=123");
			System.out.println("Connect success");
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Error when you connect to database!Error is: " + e.getMessage());
		}
		return connection;
	}

	public void excuteSql(String sql) throws Exception {
		Connection connect = getConnect();
		Statement stmt = connect.createStatement();
		stmt.executeUpdate(sql);
	}

	public ResultSet selectData(String sql) throws Exception {
		Connection connect = getConnect();
		Statement stmt = connect.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		return rs;
	}

	public PreparedStatement dungStament(String sql) throws SQLException, Exception {
		return getConnect().prepareStatement(sql);
	}

	public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException {
        if ( con == null || con.isClosed()) {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=shoppingweb;user=sa;password=123");
        }
        return con.prepareStatement(sql);
    }

	public static void main(String[] args) {
		System.out.println(new ConnectToDatabase().getConnect());
	}

}
