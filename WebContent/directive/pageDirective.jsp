<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="iso-8859-1"%>
<%@ page import="java.util.Date" %> 
<%@ page info="This is about page directives" %>
<%@ page buffer="16kb" %>
<%@ page errorPage="exception.jsp" %>    
<%@ page isErrorPage="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Today is: <%= new Date() %> </h1>
	<h1>한글이 적용이 안됩니다.</h1>  
</body>
</html>