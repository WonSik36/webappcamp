<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.handong.dao.*"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	String id = request.getParameter("id");
	FileDao fileDao = new FileDao();
	List<FileDto> list = fileDao.searchFileByUserId(id);
%>
</head>
<body>
	<div>
		<form action="file_upload" method="post" enctype="multipart/form-data">
			<input type="hidden" name="userId" value="<%= id %>">
			<input type="file" name="file" size="50" />
			<br />
			<input type="submit" value="Upload File" />
		</form>
	</div>
	
<%
	for(int i=0;i<list.size();i++){
		FileDto f = list.get(i);
%>
	<div>
	<a href="file_download?idx=<%= f.getIdx() %>">
		<img alt="image" src="/Hello/resources/img/<%= f.getOriginalFileName()%>">
	</a>
	</div>
<%		
	}
%>
</body>
</html>