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

	<c:set var="str1" value="Welcome-to-JSP-Programming." />
	<c:set var="str2" value="${fn:split(str1, '-')}" />
	<c:set var="str3" value="${fn:join(str2, ' ')}" />

	<p>String-3 : ${str3}</p>
	<c:set var="str4" value="${fn:split(str3, ' ')}" />
	<c:set var="str5" value="${fn:join(str4, '-')}" />

	<p>String-5 : ${str5}</p>

</body>
</html>