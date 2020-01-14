package com.handong.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider implements Provider{
	private static Connection con=null;  
	static{  
		try{  
			Class.forName(DRIVER);  
			con = DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
		}catch(SQLException|ClassNotFoundException e){
		}  
	}  

	public static Connection getCon(){  
		return con;  
	}  
}
