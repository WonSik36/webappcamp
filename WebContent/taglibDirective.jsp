<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://localhost/Hello/mytags" prefix="mytags"%>
</head>
<body>
	<h2>Number Formatting Example</h2>
	<mytags:formatNumber number="100050.574" format="#,###.00" />
	<br>
	<br>
	<mytags:formatNumber number="1234.567" format="$#,###.00" />
	<br>
	<br>
</body>
</html>