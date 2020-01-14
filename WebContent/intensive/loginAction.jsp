<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.handong.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:if test="${not empty userID}">
	<script>
		alert('이미 로그인이 되어있습니다.');
		history.back();
	</script>
</c:if>

</head>
<body>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	UserDao userDao = new UserDao();
	
	// success
	if(userDao.login(id, pw)){
		String res = "<script>alert('로그인 성공');location.href='main.jsp';</script>";
		out.print(res);
		session.setAttribute("userID", id);
	}else{
		String res = "<script>alert('로그인 실패');location.href='main.jsp';</script>";
		out.print(res);
	}
	
%>
	
</body>
</html>