package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class BDconnect {

	private static Connection conn;
	
	public static Connection getconn()
	{
		try {
			
			
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal2","root","262000");
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
}
