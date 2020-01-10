<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:catch var="catchtheException">
		<%
			int x = 2 / 0;
		%>
	</c:catch>

	<c:if test="${catchtheException != null}">
		<p>
			The type of exception is : ${catchtheException} <br /> There is an
			exception: ${catchtheException.message}
		</p>
	</c:if>
</body>
</html>