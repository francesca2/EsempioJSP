<%@page import="it.alfasoft.francesca.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <jsp:useBean id="utente" class="it.alfasoft.francesca.bean.UtenteBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="utente"/>

<%
Gestione g=new Gestione();

if(utente.isValid()==true) {
	//Se è true è valido
	g.registraUtente(utente);
	%>
	<jsp:forward page="registrazioneAvvenuta.jsp"/>
	<%
}
else {
	//torna alla pagina di registrazione
	%>
	<jsp:forward page="formRegistrazione.jsp"/>
	<%
	
}
%>