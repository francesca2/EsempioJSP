<%@page import="it.alfasoft.francesca.bean.UtenteBean"%>
<%@page import="it.alfasoft.francesca.dao.UtenteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Elenco utenti</h1>

<table border ="1">
<thead>

<tr>
<th>n.</th> <th>nome</th> <th>cognome</th>
</tr>

</thead>

<%
UtenteDao udao=new UtenteDao();
int i=1;
for(UtenteBean u : udao.getTuttiUtenti())
{
	%>
	
	<tr>
	<td><%=i %>	</td>
	<td><%=u.getNome() %></td>
	<td><%=u.getCognome() %></td>
	
	</tr>
	
	<%
	i++;
}
%>


</table>

</body>
</html>