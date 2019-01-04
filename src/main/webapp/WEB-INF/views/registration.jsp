<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign up</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css"></link>
</head>
<body>
	<div id="login-box">
	  <div class="left">
		<h1>Sign up</h1>
		<form action="${pageContext.request.contextPath}/registration" method="POST">
			<input type="text" name="name" placeholder="Username" />
			<input type="text" name="email" placeholder="E-mail" />
			<input type="password" name="password" placeholder="Password" />
			<input type="password" name="password2" placeholder="Retype password" />
			
			<input type="submit" name="signup_submit" value="Sign me up" />
		</form>
	  </div>
	  
	  <div class="right">
		<span class="loginwith">Sign in with<br />social network</span>
		
		<button class="social-signin facebook">Log in with facebook</button>
		<button class="social-signin twitter">Log in with Twitter</button>
		<button class="social-signin google">Log in with Google+</button>
	  </div>
	  <div class="or">OR</div>
	</div>
</body>
</html>