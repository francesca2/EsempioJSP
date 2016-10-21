<%@page import="java.util.List"%>
<%@page import="it.alfasoft.francesca.bean.UtenteBean"%>
<%@page import="it.alfasoft.francesca.dao.UtenteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
       <jsp:useBean id="utente" class="it.alfasoft.francesca.bean.UtenteBean" scope="request"></jsp:useBean>
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
//int i=1;
List<UtenteBean> lista =udao.getTuttiUtenti();
session.setAttribute("lista",lista);

//for(UtenteBean u : udao.getTuttiUtenti())
//{
//	utente.setNome(u.getNome());
//	utente.setCognome(u.getCognome());
	%>
	
	<c:set var="i" value="1" scope="page" />

  <c:forEach items="${lista}" var="u">

	<tr>
	<td> <c:out value="${i}"/></td>
	<td>  <c:out value="${u.nome}"/></td>
	<td>  <c:out value="${u.cognome}"/></td>
	
	</tr>
	<c:set var="i" value="${i + 1}" scope="page"/>
  </c:forEach>	
	<%
//	i++;
//}
%>


</table>

</body>
</html>