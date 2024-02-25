<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<%
	
	HttpSession session1 = request.getSession(false);
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session1 != null && session1.getAttribute("username") != null) {

		String username = (String) session1.getAttribute("username");
	
	%>
	<div align="center">
		<h1>
			Welcome
			<%=username%>
		</h1>

		<p>
			<a href="logout.jsp">Logout</a>
		</p>
	</div>
	
	<% }
	else{
		response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>