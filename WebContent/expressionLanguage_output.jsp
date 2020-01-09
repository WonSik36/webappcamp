<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Hello/resources/temp.css">
</head>
<body>
<div class="container">
	<%@ include file="resources/header.html" %>
	<div>
		<h1>Name: ${member.name}</h1>
		<h1>Age: ${member.age}</h1>
		<h1>E-mail: ${member.email}</h1>
	</div>
</div>
<%@ include file="resources/footer.html" %>
<%@ include file="resources/script.html" %>
</body>
</html>