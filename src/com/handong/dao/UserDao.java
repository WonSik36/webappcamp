package com.handong.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.DriverManager;

public class UserDao {
	private Connection conn;
    
    public UserDao() {
    	conn= ConnectionProvider.getCon();
    }
    
    public int join(User user) {
        String SQL= "INSERT INTO user VALUES(?, ?, ?, ?, ?) ";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserName());
            pstmt.setString(4,user.getUserGender());
            pstmt.setString(5,user.getUserEmail());
            return pstmt.executeUpdate();	// return 1
        }
        catch(SQLException e) {
        	return -1;
        }
    }
    
    public int update(User user) {
    	String sql = "UPDATE user SET userPassword=?, userName=?, userGender=?, userEmail=? WHERE userId=?";
    	
    	try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,user.getUserPassword());
            pstmt.setString(2,user.getUserName());
            pstmt.setString(3,user.getUserGender());
            pstmt.setString(4,user.getUserEmail());
            pstmt.setString(5,user.getUserID());

            return pstmt.executeUpdate();	// return 1
        }
        catch(SQLException e) {
            return -1;
        }
    }
    
    public int delete(String id) {
    	String sql = "DELETE FROM user WHERE userId=?";
    	
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,id);
            return pstmt.executeUpdate();	// return 1
        }
        catch(SQLException e) {
            return -1;
        }
    }
    
    public int deleteAll() {
    	String sql = "DELETE FROM user";
    	
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(sql);
            return pstmt.executeUpdate();	// return 1
        }
        catch(SQLException e) {
//            e.printStackTrace();
            return -1;
        }
    }
    
    public User search(String userId) {
    	String sql = "SELECT * FROM user WHERE userId=?";
    	User u = new User();
    	
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,userId);
            ResultSet rs = pstmt.executeQuery();
            
            if(!rs.next()) {
            	return null;
            }
            
            u.setUserID(rs.getString("userId"));
            u.setUserPassword(rs.getString("userPassword"));
            u.setUserName(rs.getString("userName"));
            u.setUserGender(rs.getString("userGender"));
            u.setUserEmail(rs.getString("userEmail"));
            
            return u;
        }
        catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public ArrayList<User> searchAll() {
    	String sql = "SELECT * FROM user ORDER BY userId ASC";
    	ArrayList<User> list = new ArrayList<User>();
    	User u = null;
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()) {
            	u = new User();
            	u.setUserID(rs.getString("userId"));
            	u.setUserPassword(rs.getString("userPassword"));
            	u.setUserName(rs.getString("userName"));
            	u.setUserGender(rs.getString("userGender"));
            	u.setUserEmail(rs.getString("userEmail"));
            	
            	list.add(u);
            }
            
            return list;
        }
        catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public boolean login(String id, String pw) {
    	String sql = "SELECT * FROM user WHERE userID=? AND userPassword=?";
    	
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,id);
            pstmt.setString(2,pw);
            ResultSet rs = pstmt.executeQuery();
            
            if(rs.next()) {
            	return true;
            }else {
            	return false;
            }
        }
        catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
