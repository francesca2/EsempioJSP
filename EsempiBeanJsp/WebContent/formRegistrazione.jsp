<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <jsp:useBean id="message" class="Utility.MessageBean" scope="request"></jsp:useBean>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrati</title>
</head>
<body>

<h1>Registration page</h1>

<%=message.getMessage()%>

<form action="doRegistrazione.jsp" method="post">
Nome: <input type="text" name="nome" /> <br>
Cognome: <input type="text" name="cognome"/> <br>
Username: <input type="text" name="username"/> <br>
Password: <input type="password" name="password"/> <br>

<input type="submit" value ="Registrati"/>

</form>

</body>
</html>