<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>The fmt:parseNumber tag Example is:</h3>

	<c:set var="Amount" value="786.970" />

	<fmt:parseNumber var="j" type="number" value="${Amount}" />
	<p>
		<i>Amount is:</i>
		<c:out value="${j}" />
	</p>

	<fmt:parseNumber var="j" integerOnly="true" type="number"
		value="${Amount}" />
	<p>
		<i>Amount is:</i>
		<c:out value="${j}" />
	</p>

</body>
</html>