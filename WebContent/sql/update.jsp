<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/wintercamp2020" user="root" password="tmfl3fkdzk4" />

<sql:query dataSource="${db}" var="rsBef">  
	SELECT * from students;  
</sql:query>

<sql:update dataSource="${db}">  
		INSERT INTO students VALUES (154,'Nasreen', 'jaha', 25);  
</sql:update>
  
<sql:query dataSource="${db}" var="rsAft">  
	SELECT * from students;  
</sql:query>

<sql:update dataSource="${db}">  
		DELETE FROM students WHERE id=154;
</sql:update>

</head>
<body>
	<h1>Before Insert</h1>
	<table border="2">
		<tr>
			<th>Student ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		
		<c:forEach var="table" items="${rsBef.rows}">
			<tr>
				<td><c:out value="${table.id}" /></td>
				<td><c:out value="${table.First_Name}" /></td>
				<td><c:out value="${table.Last_Name}" /></td>
				<td><c:out value="${table.Age}" /></td>
			</tr>
		</c:forEach>
		
	</table>
	
	<br><br><br>
		
	<h1>After Insert</h1>
	<table border="2">
		<tr>
			<th>Student ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		
		<c:forEach var="table" items="${rsAft.rows}">
			<tr>
				<td><c:out value="${table.id}" /></td>
				<td><c:out value="${table.First_Name}" /></td>
				<td><c:out value="${table.Last_Name}" /></td>
				<td><c:out value="${table.Age}" /></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>