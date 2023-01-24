<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<style>
	input{
	margin-bottom: 10px;
	}
</style>
<body>
	<h1>Registration form</h1>
	<form action="registration" method="post"><br>
		<input name="firstName" type="text" placeholder="Name"><br>
		<input name="lastName" type="text" placeholder="Last Name"><br>
		<input name="email" type="text" placeholder="Email"><br>
		<input name="password" type="password" placeholder="Password"><br>
		<input name="accessLevel" type="radio" id="user" value="user" checked>
		<label for="user">User</label>
		<input name="accessLevel" type="radio" id="admin" value="admin" checked>
		<label for="admin">Admin</label><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>