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
	UserDao userDao = new UserDao();
	User user = new User();
	user.setUserID(request.getParameter("userID"));
	user.setUserPassword(request.getParameter("userPassword"));
	user.setUserName(request.getParameter("userName"));
	user.setUserEmail(request.getParameter("userEmail"));
	user.setUserGender(request.getParameter("userGender"));

	// success
	if(userDao.update(user) > 0){
		String res = "<script>alert('수정 완료');location.href='main.jsp';</script>";
		out.print(res);
	}else{
		String res = "<script>alert('수정 실패');location.href='main.jsp';</script>";
		out.print(res);
	}
	
%>
</body>
</html>