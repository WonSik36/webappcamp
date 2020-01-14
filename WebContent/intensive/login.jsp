<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<form action="loginAction.jsp" method="post">
		<p>
			ID: <input type="text" name="id" placeholder="Enter ID">
		</p>
		<p>
			PW: <input type="password" name="pw" placeholder="Enter Password">
		</p>
		<input type="submit" value="login">
	</form>
</body>
</html>