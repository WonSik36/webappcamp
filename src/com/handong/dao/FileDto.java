package com.handong.dao;

import lombok.Data;

@Data
public class FileDto {
	private int idx;
	private String userID;
	private String OriginalFileName;
	private String StoredFilePath;
	private long fileSize;
}
