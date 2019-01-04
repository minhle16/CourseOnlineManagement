<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
	
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css"></link>
	</head>
	<body>
		<div id="login-box">
		  <div class="login">
			<h1 style="padding-left:70px ">Login</h1>
			<form action="login" method="POST">
				<input type="text" name="email" placeholder="E-mail" />
				<input type="password" name="password" placeholder="Password" />		
				<input style="margin-left: 50px" type="submit" name="login" value="Login" />
			</form>
		  </div>
		</div>
	</body>
</html>
