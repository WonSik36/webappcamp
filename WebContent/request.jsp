<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.jsp.JspWriter" %>
<%@ page import="java.io.IOException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String user = request.getParameter("user");
	out.print("<h1>script let tag: "+user+"</h1>");
%>
<h1>expression tag: <%= user %></h1>
<%! 
	public void writeH1(String str, JspWriter out)throws IOException{
		out.print("<h1>declaration tag: "+str+"</h1>");
	}
%>
<% writeH1(user,out); %>
</body>
</html>