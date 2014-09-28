<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String aUser = request.getParameter("username");
	String aPassword = request.getParameter("password");
	String admUsername = "admin";
	String admPassword = "1234";
	if(aUser.equals(admUsername)){
			out.print(aUser);
		if(aPassword.equals(admPassword)){
			out.print(aPassword);
		}else{
			out.print("Wrong password.");
		}
	}else{
		out.print("ไม่มี Username ในระบบ");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
	<h1>Login</h1>
	<p>
		<b>Username</b>:<%=aUser%><br> <b>Password </b>:<%=aPassword%><br>
		<a href=""><input type="button" value="back"></a>
	</p>
</body>
</html>