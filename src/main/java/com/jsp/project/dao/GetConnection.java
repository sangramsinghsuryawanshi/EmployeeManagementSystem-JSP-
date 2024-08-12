package com.jsp.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection 
{
	public static Connection isConnected()
	{
		Connection conn=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_emp","root","12345");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return conn;
	}
}
