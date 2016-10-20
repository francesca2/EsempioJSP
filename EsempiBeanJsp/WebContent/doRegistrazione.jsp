<%@page import="it.alfasoft.francesca.bean.UtenteBean"%>
<%@page import="it.alfasoft.francesca.service.InvalideUsername"%>
<%@page import="it.alfasoft.francesca.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <jsp:useBean id="utente" class="it.alfasoft.francesca.bean.UtenteBean" scope="request"></jsp:useBean>
  <jsp:useBean id="u" class="it.alfasoft.francesca.bean.UtenteBean" scope="page"></jsp:useBean>
  <jsp:useBean id="message" class="Utility.MessageBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="utente"/>

<%
Gestione g=new Gestione();
u=g.getUtente(utente.getUsername());

	if(u!=null)
	{
		message.setMessage("Username già in uso");
		%>
		<jsp:forward page="formRegistrazione.jsp"/>
		<%
	}
	
	else if(utente.isValid()==true) {
	
	// prendo la password inserita dall' utente 
	String pass= utente.getPassword();
	
	// la codifico
	pass=g.convertiPass(pass);
	
	//setto di nuovo dentro bean 
	
	utente.setPassword(pass);
	
	// e dopo salvo utente dentro db 
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