
package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class MyConnection {
	private static Connection conn=null;
	public static Connection getDBConnection() throws ClassNotFoundException, SQLException
	{
		if(conn==null){
			ResourceBundle bundle=ResourceBundle.getBundle("com.util.dbconfig");
		Class.forName(bundle.getString("driver"));
		conn=DriverManager.getConnection(bundle.getString("url"),bundle.getString("username"),bundle.getString("password"));
		conn.setAutoCommit(true);
		}
		return conn;
	}
	
	public static void closeDBConnection() throws SQLException
	{
		conn.close();
		conn=null;
	}

}
