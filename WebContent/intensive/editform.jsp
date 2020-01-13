<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.handong.dao.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	String id = request.getParameter("id");
	UserDao userDao = new UserDao();
	User u = userDao.search(id);
%>

</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="editAction.jsp">
					<h3 style="text-align: center;">회원 정보 수정 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="userID" maclength="20" value="<%= u.getUserID() %>" >
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maclength="20" value="<%= u.getUserPassword() %>">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="userName" maclength="20" value="<%= u.getUserName() %>">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<%
								if(u.getUserGender().equals("m")){
									out.print("<label class='btn btn-primary active'>" 
											+"<input type='radio' name='userGender' autocomplete='off' value='m' checked>남자"
											+"</label>" 
											+"<label class='btn btn-primary'>"
											+"<input type='radio' name='userGender' autocomplete='off' value='f'>여자"
											+"</label>");
								}else if(u.getUserGender().equals("f")){
									out.print("<label class='btn btn-primary'>" 
											+"<input type='radio' name='userGender' autocomplete='off' value='m'>남자"
											+"</label>" 
											+"<label class='btn btn-primary active'>"
											+"<input type='radio' name='userGender' autocomplete='off' value='f' checked>여자"
											+"</label>");
								}else
									throw new RuntimeException("There is no matched gender");
							%>

							
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maclength="20" value="<%= u.getUserEmail() %>">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원 정보 수정">
				</form>
			</div>
		</div>
		
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

		<!-- Popper JS -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>