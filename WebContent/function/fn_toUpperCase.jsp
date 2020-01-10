<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="site" value="javatpoint.com" />
	<c:set var="author" value="Won Sik Cheung" />
	Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}.

</body>
</html>