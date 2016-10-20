<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:useBean id="utente2" class="it.alfasoft.francesca.bean.UtenteBean" scope="session"></jsp:useBean>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>

<h1>Welcome page</h1>

<h2>Benvenuto : 
<%=utente2.getNome()%>
</h2>

</body>
</html>