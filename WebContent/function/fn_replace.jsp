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

	<c:set var="author" value="Ramesh Kumar Ramesh" />
	<c:set var="string" value="pqr xyz abc pqr" />
	${fn:replace(author, "Ramesh", "Suresh")} ${fn:replace(string, "pqr", "hello")}

</body>
</html>