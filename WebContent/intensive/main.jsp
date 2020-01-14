<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.handong.dao.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	UserDao userDao = new UserDao();
	ArrayList<User> list = userDao.searchAll();
	request.setAttribute("list", list);
%>
<style>
	#main:hover{
		cursor:wait;
	}
</style>
</head>
<body>
	<h1 onclick="gotoMain()" id="main">Add User Page</h1>
	<c:if test="${not empty userID}">
		<h3>안녕하세요 ${userID} 님 <a href="logout.jsp">로그아웃</a></h3>
	</c:if>
	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Edit</th>
			<th>Delete</th>
			<th>Image</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getUserID()}</td>
				<td>${u.getUserName()}</td>
				<td>${u.getUserPassword()}</td>
				<td>${u.getUserEmail()}</td>
				<td>${u.getUserGender()}</td>
				<td><a href="editform.jsp?id=${u.getUserID()}">Edit</a></td>
				<td><a href="deleteUser.jsp?id=${u.getUserID()}">Delete</a></td>
				<td><a href="lookup_file.jsp?id=${u.getUserID()}">Image</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<c:if test="${empty userID}">
		<a href="login.jsp">Log In</a>
	</c:if>
	<a href="signup.html">Add New User</a>
	
	<script>
		function gotoMain(){
			location.href='main.jsp';
		}
	</script>
</body>
</html>