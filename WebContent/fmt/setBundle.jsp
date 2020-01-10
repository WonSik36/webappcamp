<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<fmt:setBundle basename="com.handong.jstl.Bundle" var="lang" />
	<fmt:message key="colour.Violet" bundle="${lang}" />
	<br />
	<fmt:message key="colour.Indigo" bundle="${lang}" />
	<br />
	<fmt:message key="colour.Blue" bundle="${lang}" />
	<br />

</body>
</html>