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
	<h1>Login</h1>
	<%
	Enumeration paramNames = request.getParameterNames();
	
	String aUser = request.getParameter("username");
	String aPassword = request.getParameter("password");
	String admUsername = "admin";
	String admPassword = "1234";
	
	session.setAttribute("username", aUser);
	session.setAttribute("password", aPassword);
	session.setAttribute("adminUsername", admUsername);
	session.setAttribute("adminPassword", admPassword);
	
	String strUser = String.valueOf(session.getAttribute("aUser"));
	String strPass = String.valueOf(session.getAttribute("aPassword"));
	String adUser = String.valueOf(session.getAttribute("admUsername"));
	String adPass = String.valueOf(session.getAttribute("admPassword"));
	
	if(aUser.equals(admUsername)){
			out.println(aUser);
		if(aPassword.equals(admPassword)){
			out.println(aPassword);
		}else{
			out.println("Wrong password.");
		}
	}else{
		out.println("ไม่มี Username ในระบบ");
	}
%>
	<p>
		<b>Username</b>:<%=aUser%><br> <b>Password </b>:<%=aPassword%><br>
		<a href=""><input type="button" value="back"></a>
	</p>
</body>
</html>