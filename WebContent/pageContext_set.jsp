<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%   
	String name = request.getParameter("uname");
	pageContext.setAttribute("user", name, PageContext.SESSION_SCOPE);
%>  
<a href="pageContext_get.jsp">second jsp page</a>  
  
</body>
</html>