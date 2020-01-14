package com.handong.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public class FileDao {
	private Connection conn;

	public FileDao() {
		conn= ConnectionProvider.getCon();
	}

	public void insertFile(FileDto f) {
		String SQL= "INSERT INTO file (`user_id`,`original_file_name`,`stored_file_path`,`file_size`) VALUES(?, ?, ?, ?) ";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,f.getUserID());
			pstmt.setString(2,f.getOriginalFileName());
			pstmt.setString(3,f.getStoredFilePath());
			pstmt.setLong(4,f.getFileSize());

			pstmt.executeUpdate();
		}
		catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}

	@Nonnull
	public List<FileDto> searchFileByUserId(String userID) {
		String sql = "SELECT * FROM file WHERE user_id=? ORDER BY idx DESC";
		FileDto f = null;
		List<FileDto> list = new ArrayList<FileDto>();

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userID);
			ResultSet rs = pstmt.executeQuery();

			while(rs.next()) {
				f = new FileDto();
				f.setIdx(rs.getInt("idx"));
				f.setUserID(rs.getString("user_id"));
				f.setFileSize(rs.getInt("file_size"));
				f.setOriginalFileName(rs.getString("original_file_name"));
				f.setStoredFilePath(rs.getString("stored_file_path"));

				list.add(f);
			}


			return list;
		}
		catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}

	@Nullable
	public FileDto searchFileByIdx(int idx) {
		String sql = "SELECT * FROM file WHERE idx=?";
		FileDto f = new FileDto();

		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,idx);
			ResultSet rs = pstmt.executeQuery();

			if(!rs.next()) {
				return null;
			}

			f.setIdx(rs.getInt("idx"));
			f.setUserID(rs.getString("user_id"));
			f.setFileSize(rs.getInt("file_size"));
			f.setOriginalFileName(rs.getString("original_file_name"));
			f.setStoredFilePath(rs.getString("stored_file_path"));

			return f;
		}
		catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
