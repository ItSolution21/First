<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<div align="center">
		<h1>Login Page</h1>
		<form action="RegisterServlet" method="post">
		<label for="email"> Email : </label> <input type="email"
				id="email" name="email" required><br>
			<br>
			<label for="username"> UserName : </label> <input type="text"
				id="username" name="username" required><br>
			<br> <label for="password"> Password : </label> <input
				type="password" id="username" name="password" required><br>
			<br>
			<button type="button">Login</button>
		</form>
		
		<p><a href="index.html">Back to Home</a> </p>
	</div>
</body>
</html>