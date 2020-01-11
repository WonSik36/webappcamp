package com.handong.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;

public class UserDao {
	private Connection conn;
    private PreparedStatement pstmt;  
    private ResultSet rs;
    
    public UserDao() {
        try {
            String dbURL="jdbc:mysql://localhost/wintercamp2020";                             
            String dbID="root";
            String dbPassword="tmfl3fkdzk4";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection(dbURL,dbID,dbPassword);
        }catch(SQLException|ClassNotFoundException e) {
        	throw new RuntimeException(e);
        }
    }
    
    public int join(User user) {
        String SQL= "INSERT INTO user VALUES(?, ?, ?, ?, ?) ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserName());
            pstmt.setString(4,user.getUserGender());
            pstmt.setString(5,user.getUserEmail());
            return pstmt.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
