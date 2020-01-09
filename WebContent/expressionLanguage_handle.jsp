<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="com.handong.beans.User" scope="session"/>
    <jsp:setProperty property="*" name="member" />
    
    <jsp:forward page="expressionLanguage_output.jsp" />
</body>
</html>