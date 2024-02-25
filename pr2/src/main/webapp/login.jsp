<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div align="center">
		<h1>Login Page</h1>
		<form action="LoginServlet" method="post">
			<label for="username"> UserName : </label>
			<input type="text" id="username" name="username" required><br><br>
			<label for="password"> Password : </label>
			<input type="password" id="username" name="password" required><br><br>
			<button type="submit"> Login </button>
		</form>
		
		<p><a href="index.html">Back to Home</a> </p>
		
		<% String error = request.getParameter("error");
			if(error != null && error.equals("1")){ %>
				<p style="color:red;">Invalid Username or Password. Please try again</p>
			<%}
		%>
	</div>
</body>
</html>