package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Connexion {
	private Connection con;
	private static Statement stm;
	
	public void Connect() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/mrsams";
		con = DriverManager.getConnection(url, "root", "");
		stm = con.createStatement();
	}
	public void Disconnect() throws SQLException {
		con.close();
	}
	public int MAJ(String sql) throws SQLException {
		return stm.executeUpdate(sql);
	}
	public ResultSet Select(String sql) throws SQLException {
		return stm.executeQuery(sql);
	}

}
