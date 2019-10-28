package com.internousdev.mysite1.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {

	private static String driverName="com.mysql.jdbc.Driver";
	private static String url="jdbc:mysql://localhost/mysitedb";
	private static String user="root";
	private static String password="mysql";


	//--------------------DBに接続--------------------------------------
	public Connection getConnection(){
		Connection con=null;
		try{
			Class.forName(driverName);
			con=DriverManager.getConnection(url, user, password);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return con;
	}
}