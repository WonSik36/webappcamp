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

	<fmt:bundle basename="com.handong.jstl.Bundle" prefix="colour.">
		<fmt:message key="Violet" />
		<br />
		<fmt:message key="Indigo" />
		<br />
		<fmt:message key="Blue" />
		<br />

	</fmt:bundle>

</body>
</html>