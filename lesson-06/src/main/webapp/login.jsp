<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<style>
	input{
	margin-bottom: 10px;
	}
</style>
<body>
	<h1>Login</h1>
	<form action="logging" method="post">
		<input name="email" type="text" placeholder="Email"><br>
		<input name="password" type="password" placeholder="Password"><br>
		<input type="submit" value="Login">
	</form>
</body>
</html>