package com.handong.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.handong.dao.FileDto;
import com.handong.dao.FileDao;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/intensive/file_upload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String imgPath = "C:\\Users\\wonsik\\Documents\\workspace\\eclipse_project\\Hello\\WebContent\\resources\\img";
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileUpload() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(ServletFileUpload.isMultipartContent(request)){
			FileDao fileDao = new FileDao();
			String userId = null;
			try {
				List <FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				for(FileItem item : multiparts){
					if(!item.isFormField()){
						String name = new File(item.getName()).getName();
						item.write(new File(imgPath+ File.separator + name));
						
						FileDto f = new FileDto();
						f.setUserID(userId);
						f.setOriginalFileName(name);
						f.setStoredFilePath(imgPath+File.separator+name);
						f.setFileSize(item.getSize());
						
						fileDao.insertFile(f);
					}else {
						String fieldname = item.getFieldName();
		                String fieldvalue = item.getString();
		                
		                if(fieldname.equals("userId")) {
		                	userId = fieldvalue;
		                }
					}
				}
				//File uploaded successfully
				request.setAttribute("message", "File Uploaded Successfully");
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}         		
		}else{

			request.setAttribute("message","No File found");
		}
		request.getRequestDispatcher("/intensive/result.jsp").forward(request, response);
	}

}
