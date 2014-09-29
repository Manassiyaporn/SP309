<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
<!-- ฟังก์ชันการล็อกอิน -->
	<h1>Login</h1>
	<%
	String aUser = request.getParameter("username");
	String aPassword = request.getParameter("password");
	String admUsername = "admin";
	String admPassword = "1234";
	
	//ตรวจสอบ username และ password
	if(aUser.equals(admUsername) && aPassword.equals(admPassword)){
		session.setAttribute("username", admUsername);
		response.sendRedirect("index.jsp");	
	}else{
		out.println("Please check your username or password again!!! <br>");
		out.println("<input type=\"button\" value=\"back\" onClick=\"JavaScript:self.location.href='login.html'\">");
	}
%>
</body>
</html>