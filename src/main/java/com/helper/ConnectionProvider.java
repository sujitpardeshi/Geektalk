package com.helper;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
public class ConnectionProvider{
	private static Connection con = null;
	public static Connection getConnection()
	{
		try{
			if(con == null)
			{
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/esitalk";
				String username = "root";
				String pass = "1234";
				System.out.print("<h1>Hellp</h1>");
				
				con = DriverManager.getConnection(url,username,pass);
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return con;
	}
	
}
