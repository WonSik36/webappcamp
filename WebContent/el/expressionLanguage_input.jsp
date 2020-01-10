<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Hello/resources/temp.css">
</head>
<body>
<div class="container">
	<%@ include file="/resources/header.html" %>
		<div>
			<h3>회원 정보를 입력하세요</h3>
			<form action="expressionLanguage_handle.jsp" method="post">
				<div class="form-group">
					<label for="email">Email address:</label> <input type="email"
						class="form-control" placeholder="Enter email" id="email"
						name="email">
				</div>
				<div class="form-group">
					<label for="name">Name:</label> <input type="text"
						class="form-control" placeholder="Enter name" id="name"
						name="name">
				</div>
				<div class="form-group">
					<label for="age">Age:</label> <input type="text"
						class="form-control" placeholder="Enter age" id="age" name="age">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
<%@ include file="/resources/footer.html" %>
<%@ include file="/resources/script.html" %>
</body>
</html>