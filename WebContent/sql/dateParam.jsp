<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/wintercamp2020" user="root" password="tmfl3fkdzk4" />
		
<%  
	Date birth = new Date("2020/01/10");  
%>

<sql:query dataSource="${db}" var="rs">  
	SELECT students.id, students.first_name, students.last_name, stu_bir.birth 
	FROM students INNER JOIN stu_bir 
	ON students.id=stu_bir.id 
	WHERE stu_bir.birth = ?;  
 	<sql:dateParam value="<%=birth%>" type="DATE" />  
</sql:query>

</head>
<body>

	<table border="2" width="100%">
		<tr>
			<th>Students ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Date of Birth</th>
		</tr>
		<c:forEach var="table" items="${rs.rows}">
			<tr>
				<td><c:out value="${table.id}" /></td>
				<td><c:out value="${table.first_name}" /></td>
				<td><c:out value="${table.last_name}" /></td>
				<td><c:out value="${table.birth}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>