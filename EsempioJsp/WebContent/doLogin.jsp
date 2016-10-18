<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    String user =request.getParameter("username");
    String password= request.getParameter("pswd");
    
    if(password.equals("123")) {
    	//Se la password è 123 viene mandata alla pagina di bevenuto
  //  	RequestDispatcher rds= request.getRequestDispatcher("Welcome.jsp");
   // 	rds.forward(request, response);
    %>
    
    <jsp:forward page = "Welcome.jsp"></jsp:forward>
    
    <%	
    	
    }
    else
    {
    	//Se la password non è 123 torna alla pagina di login
    	RequestDispatcher rds= request.getRequestDispatcher("Login.jsp");
    	rds.forward(request, response);
    }
    %>