<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<h1>Login page</h1>

<form action="doLogin.jsp" method="post">
Username: <input type="text" name="usrnm"/> <br>
Password: <input type="password" name="pswd"/> <br>

<input type="submit" value ="Login"/>

</form>

<a href="formRegistrazione.jsp">Registrati</a>

</body>
</html>