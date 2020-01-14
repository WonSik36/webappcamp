package com.handong.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;

import com.handong.dao.FileDao;
import com.handong.dao.FileDto;

/**
 * Servlet implementation class FileDownload
 */
@WebServlet("/intensive/file_download")
public class FileDownload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String imgPath = "C:\\Users\\wonsik\\Documents\\workspace\\eclipse_project\\Hello\\WebContent\\resources\\img";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileDownload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idx = request.getParameter("idx");
		FileDao fileDao = new FileDao();
		FileDto f = fileDao.searchFileByIdx(Integer.parseInt(idx));
		
		if(f==null) {
			throw new RuntimeException("There is no file");
		}
			
		byte[] files = FileUtils.readFileToByteArray(new File(f.getStoredFilePath()));				
		
		response.setContentType("application/octet-stream");
		response.setContentLength(files.length);
		response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(f.getOriginalFileName(),"UTF-8")+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
	
		response.getOutputStream().write(files);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
