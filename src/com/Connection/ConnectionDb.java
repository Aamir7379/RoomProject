package com.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDb {
public static Connection get_connection() {
	Connection con=null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/guest","root","root");
	} catch (Exception e) {
		e.printStackTrace();
	}
	return con;
	
}
}
