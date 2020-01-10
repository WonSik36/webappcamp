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
<sql:query dataSource="${db}" var="rs">  
	SELECT * from students;  
</sql:query>
</head>
<body>

	<table border="2">
		<tr>
			<th>Student ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		
		<c:forEach var="table" items="${rs.rows}">
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