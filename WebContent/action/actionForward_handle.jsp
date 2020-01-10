<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Today is: <% out.print(java.util.Calendar.getInstance().getTime()); %></h1>  
	<h1>your name is <%= request.getParameter("name") %></h1>  
</body>
</html>