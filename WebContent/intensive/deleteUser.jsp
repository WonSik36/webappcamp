<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.handong.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// get delted id
	String deleteId = request.getParameter("id");
	UserDao userDao = new UserDao();

	// if current login id is equal to deleted id than log out
	String curId = (String)session.getAttribute("userID");
	if(curId!=null && deleteId.equals(curId))
		session.setAttribute("userID", null);
	
	// success
	if(userDao.delete(deleteId) > 0){
		String res = "<script>alert('삭제 완료');location.href='main.jsp';</script>";
		out.print(res);
	}else{
		String res = "<script>alert('삭제 실패');location.href='main.jsp';</script>";
		out.print(res);
	}
	
%>
</body>
</html>